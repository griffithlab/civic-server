let https = require('https');
let aws = require('aws-sdk');

let sendSlackNotification = (message) => {
  let timestamp = new Date().toLocaleString("en-US", {timeZone: "America/Chicago"});
  let postData = {
    "channel": "#uptime-monitoring",
    "text": message + " as of " + timestamp
  };

  let data = JSON.stringify(postData);

  let options = {
    method: 'POST',
    hostname: 'hooks.slack.com',
    port: 443,
    path: process.env.WEBHOOK_PATH,
    headers: {
      "Content-Type": 'application/json',
      'Content-Length': data.length
    },
  };

  let req = https.request(options, (res) => { console.log(res.statusCode) });

  req.write(data);
  req.end();
};

let isSiteDown = (url, callback) => {
  let req = https.get(url, (resp) => { callback(resp.statusCode != '200') });
  req.setTimeout(2500, () => { callback(true) });
};

let fileContents = (timestamp, retries) => { `${timestamp}\t${retries}` };

let retryCount = (fileContents) => { parseInt(fileContents.split("\t")[1], 10) };
let lastAlert = (fileContents) => { new Date(parseInt(fileContents.split("\t")[0], 10) * 1000) };

let secondsSinceEpoch = () => { Math.floor(new Date().getTime() / 1000) };
let backOffSeconds = 15 * 60;

exports.handler = (event) => {
  let s3 = new aws.S3();

  let s3Params = {
    Bucket: process.env.S3_BUCKET,
    Key: process.env.SERVICE_NAME
  };

  let testUrl = "https://civicdb.org/api/server";

  isSiteDown(testUrl, async function(isDown) {
    if (isDown) {
      s3.getObject(s3Params, (err, data) => {
        if (err) {
          console.log(err);
          sendSlackNotification('<!channel> CIViC Appears to be down');
        } else {
          let contents = data.Body.toString('ascii');
          if (contents == "OK") {
            s3Params.Body = fileContents(secondsSinceEpoch(),'1');
            sendSlackNotification('<!channel> CIViC Appears to be down');
          } else {
            let lastAlertTime = lastAlert(contents);
            let retryNumber = retryCount(contents);
            if (secondsSinceEpoch > (lastAlertTime + (retryNumber * backOffSeconds))) {
              s3Params.Body = fileContents(secondsSinceEpoch(), retryNumber + 1);
              sendSlackNotification('<!channel> CIViC Still appears to be down');
            } else {
              s3Params.Body = fileContents(lastAlertTime, retryNumber + 1);
            }
          }
        }
      });
    } else {
      s3Params.Body = 'OK';
    }
    await s3.putObject(s3Params).promise();
  });


  const response = {
    statusCode: 200,
    body: JSON.stringify('Done'),
  };
  return response;
};