Wordnik.configure do |config|
  
  if Rails.env = "production"
    config.api_key = ENV['WORDZIES_WORDNIK_API_KEY']    # required
  else
    config.api_key = API_KEYS['WORDZIES_WORDNIK_API_KEY']    # required
  end
  # config.username = 'bozo'                    # optional, but needed for user-related functions
  # config.password = 'cl0wnt0wn'               # optional, but needed for user-related functions
  config.response_format = 'json'             # defaults to json, but xml is also supported
  config.logger = Logger.new('/dev/null')     # defaults to Rails.logger or Logger.new(STDOUT). Set to Logger.new('/dev/null') to disable logging.
end