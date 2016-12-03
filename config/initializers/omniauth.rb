Rails.application.configure.middleware.use OmniAuth::Builder do
  config.omniauth :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET'], {
    strategy_class: OmniAuth::Strategies::Facebook,
    provider_ignores_state: true
  }
end
