require "instagram"

Instagram.configure do |config|
  config.client_id = ENV['INSTAGRAM_ID']
  #config.access_token = ENV['ACCESS_TOKEN']
  config.client_secret = ENV['INSTAGRAM_SECRET']
end

CALLBACK_URL = "http://localhost:3000/auth/instagram/callback"

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :instagram, ENV['INSTAGRAM_ID'], ENV['INSTAGRAM_SECRET']
end
