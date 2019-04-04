let https = require('https');


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
  https.get(url, (resp) => { callback(resp.statusCode != '200') });
};


exports.handler = async (event) => {
  let testUrl = "https://civicdb.org/api/server";
  isSiteDown(testUrl, (isDown) => {
    if (isDown) {
      sendSlackNotification('<!channel> CIViC Appears to be down');
    } else {
      console.log('all good');
    }
  });

  const response = {
    statusCode: 200,
    body: JSON.stringify('Done'),
  };
  return response;
};
