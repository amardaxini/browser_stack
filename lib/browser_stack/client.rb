module BrowserStack
  class Client < ApiRequest
    class << self

      def get_browsers(flat=nil)
        request  = new()
        if flat.nil?
          request.commit("/browsers")
        else
          request.commit("/browsers?flat=#{flat}")
        end
        request
      end


    end
  end
end