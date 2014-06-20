require "sinatra"
require "sprockets/traceur"

class SinatraApplication < Sinatra::Base
  set :raise_errors, true
  set :show_exceptions, false

  get "/" do
    erb :index
  end
end

SinatraSample = Rack::Builder.new do
  map "/assets" do
    root = File.dirname(__FILE__)
    environment = Sprockets::Environment.new
    environment.append_path root + '/js'
    run environment
  end

  map "/" do
    run SinatraApplication
  end
end
