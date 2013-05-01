module BrowserStack
  class ApiStatus < ApiRequest
    class << self
      def get_status
        api_status = ApiStatus.new
        api_status.commit("/status")
        api_status
      end
    end
  end
end