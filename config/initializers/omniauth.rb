Rails.application.config.middleware.use OmniAuth::Builder do
  provider :yammer, ENV['JPYAMMER_YAMMER_KEY'], ENV['JPYAMMER_YAMMER_SECRET']
end

