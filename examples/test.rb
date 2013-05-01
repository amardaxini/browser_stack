require "browser_stack"
BrowserStack.configure do |config|
  config.api_version="3"
  config.user_name = ""
  config.password = ""
end
 # browsers = BrowserStack::Browser.get_browsers
 # worker = BrowserStack::Worker.create_worker({:os=>"Windows",:os_version=>'7',:url=>"http://quizit.mypatshala.com",:browser=>"ie",:browser_version=>"8.0"})

 # worker_id = worker.parse_response["id"]

#delete_worker = BrowserStack::Worker.treminate_worker(worker_id)
# worker_status = BrowserStack::Worker.get_worker_status(worker_id)
#worker_statuses = BrowserStack::Worker.get_all_worker_status
# api_status = BrowserStack::ApiStatus.get_status
