$twitter = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV['FREIZEITTICKET_TWITTER_CONSUMER_KEY']
  config.consumer_secret = ENV['FREIZEITTICKET_TWITTER_CONSUMER_SECRET']
  config.access_token = ENV['FREIZEITTICKET_TWITTER_ACCESS_TOKEN']
  config.access_token_secret = ENV['FREIZEITTICKET_TWITTER_ACCESS_SECRET']
end