Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, API_KEYS['TWITTER_CONSUMER_KEY'], API_KEYS['TWITTER_CONSUMER_SECRET']
end