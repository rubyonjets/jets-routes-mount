require 'sinatra/base'

class SinatraApp < Sinatra::Base
  get '/' do
    "SinatraApp homepage"
  end

  get '/hello' do
    "Hello"
  end

  get '/hello2' do
    "Hello2"
  end
end

if __FILE__ == $0
  SinatraApp.run!
end
