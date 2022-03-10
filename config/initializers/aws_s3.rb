require 'aws-sdk-core'

class AWSCreds
  def self.aws_access_key
    ENV['CIVIC_AWS_ACCESS_KEY'] || Rails.application.secrets.aws_access_key
  end

  def self.aws_secret_key
    ENV['CIVIC_AWS_SECRET_KEY'] || Rails.application.secrets.aws_secret_key
  end

  def self.region
    'us-west-2'
  end
end



class AWSHelper
  def self.get_client
    return Aws::S3::Client.new(
      region: AWSCreds.region,
      credentials: Aws::Credentials.new(AWSCreds.aws_access_key, AWSCreds.aws_secret_key)
    )
  end
end

Aws.config.update(
  region: AWSCreds.region,
  credentials: Aws::Credentials.new(AWSCreds.aws_access_key, AWSCreds.aws_secret_key)
)
