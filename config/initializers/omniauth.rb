Rails.application.config.middleware.use OmniAuth::Builder do
  
  if Rails.env == "production"
    provider :twitter, ENV['WORDZIES_TWITTER_CONSUMER_KEY'], ENV['WORDZIES_TWITTER_CONSUMER_SECRET']
  else
    provider :twitter, API_KEYS['WORDZIES_TWITTER_CONSUMER_KEY'], API_KEYS['WORDZIES_TWITTER_CONSUMER_SECRET']
  end
end