Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
    :scope => 'email, name, nickname, email, gender, url, image_url', :info_fields => 'email'
end
