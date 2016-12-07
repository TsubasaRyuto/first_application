Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
  scope: "email", display: "popup",
  client_options: {
    site: 'https://graph.facebook.com/v2.8',
    authorize_url: "https://www.facebook.com/v2.8/dialog/oauth"
  },
  local: "ja_JP",
  info_fields: "email, name"
end
