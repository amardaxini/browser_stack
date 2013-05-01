module BrowserStack
  class ApiRequest
    attr_accessor :uri,:response,:http_client,:request,:config

    def commit(url,request_type="get")
      @config = BrowserStack.configuration
      set_uri(url)
      get_http_client
      if request_type == "get"
        @request = Net::HTTP::Get.new(uri.request_uri)
      else
      end
      authenticate
      @response = http_client.request(@request)
    end

    def parse_response
      if @response.code == "401"
        @response.body
      else
        JSON.parse @response.body
      end
    end

    def authenticate
      @request.basic_auth(@config.user_name,@config.password)
    end

    def set_uri(url)
      @uri = URI.parse("http://api.browserstack.com/#{@config.api_version}"+url)
    end

    def get_http_client
      @http_client  = Net::HTTP.new(@uri.host, @uri.port)
    end

  end
end