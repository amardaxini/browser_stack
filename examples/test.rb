require_relative "./../lib/browser_stack"
BrowserStack.configure do |config|
  config.api_version="3"
  config.user_name = "amardaxini@gmail.com"
  config.password = "thakkar"
end
browsers = BrowserStack::Client.get_browsers
binding.pry