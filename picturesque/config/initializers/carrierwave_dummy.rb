# This is the dummy carrierwave init file as we don't want to keep cloud credentials on a public git repo,
# yet I wanted to show the code for the app in case u need some idea.

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'your access key goes here',                        # required
    :aws_secret_access_key  => 'your secred access key goes here',
    :region                 => 'us-west-2'    #i am in california so i use this...u can change it.
  }
  config.fog_directory  = 's3kenmcfaddencom'                          # required
  config.fog_attributes = {'Cache-Control'=>"max-age=#{365.day.to_i}"} # optional, defaults to {}
end

# TODO merge git branches