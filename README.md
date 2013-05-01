# BrowserStack

Ruby Wrapper Of [Browser Stack API](https://github.com/browserstack/api)

## Installation

Add this line to your application's Gemfile:

    gem 'browser_stack'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install browser_stack

## Usage

### Basic Configuration
```
 # http://api.browserstack.com/3
 BrowserStack.configure do |config|
  config.api_version="3"
  config.user_name = "amardaxini@gmail.com"
  config.password = "thakkar"
 end

```
### Getting Available Browsers
```
 # /browsers

 client = BrowserStack::Client.get_browsers
 client.parse_response

 #/browsers?flat=true

 client = BrowserStack::Client.get_browsers(true)
 client.parse_response
 # In General for all request
 client.response # will be the http response
 client.response.code # http response

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
