require 'mongoid'

configure do
  Mongoid.configure do |config|
    config.sessions = { :default => { :hosts => ["localhost:27017"], :database => "watterson" } }
  end
end
