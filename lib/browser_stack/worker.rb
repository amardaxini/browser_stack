module BrowserStack
  class Worker < ApiRequest
    attr_accessor :os,:os_version,:url,:timeout,:browser,:browser_version
    def initialize(attributes={})
      attributes.each do |name, value|
        begin
          send("#{name}=", value)
        rescue
          puts "invalid attribute #{name} in worker"
        end
      end
    end

    def valid?
       os && os_version && url
    end

    class << self
      def create_worker(params={})
        worker = Worker.new(params)
        if worker.valid?
          worker.commit("/worker","post",params)
        else
        # raise some error
          raise "Not Valid should contain os,os_version,url parameter"
        end
        worker
      end

      def treminate_worker(worker_id)
        worker = Worker.new
        worker.commit("/worker/#{worker_id}","delete")
        worker
      end

      def get_worker_status(worker_id)
        worker = Worker.new
        worker.commit("/worker/#{worker_id}")
        worker
      end

      def get_all_worker_status
        worker = Worker.new
        worker.commit("/workers")
        worker
      end
    end

  end
end