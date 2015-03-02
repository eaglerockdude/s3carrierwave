CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAID3CMQ4KYQALPAJQ',                        # required
    :aws_secret_access_key  => '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',
    :region                 => 'us-west-2'
  }
  config.fog_directory  = 's3kenmcfaddencom'                          # required
  config.fog_attributes = {'Cache-Control'=>"max-age=#{365.day.to_i}"} # optional, defaults to {}
end

# TODO merge git branches