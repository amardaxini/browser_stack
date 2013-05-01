module BrowserStack
  class Configuration

    attr_accessor :api_version,:user_name,:password
    def initialize(api_version=3,user_name="",password="")
      @api_version = api_version
      @user_name = user_name
      @password = password
    end
  end

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration = Configuration.new
    yield(configuration) if block_given?
  end
end