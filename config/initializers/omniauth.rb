#
# Facebook Omniauth strategy
#
Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
  provider :facebook, '908051069244382', '4ad7daf43c53ac1d649867eebddcd5fe',
           :scope => 'email', :display => 'popup'
end
