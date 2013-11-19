require "instagram"

Instagram.configure do |config|
  config.client_id = "  59c859cd52764164a0a35b3e17657167"
  config.access_token = "68dda2717e4c486ca04d94e70ab94785"
end

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :instagram, ENV['INSTAGRAM_ID'], ENV['INSTAGRAM_SECRET']
end
