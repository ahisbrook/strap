require 'sinatra'

lib_path = File.expand_path('../lib', __FILE__)
require "#{lib_path}/message_generator"

class MyThing < Sinatra::Base
  set :show_exceptions, true

  get '/' do
    message = MessageGenerator.new.generate(params["typeSomething"])
    erb :index, :locals => {
      :message_visibility => 'hidden',
      :message => message
    }
  end

  post '/' do
    message = MessageGenerator.new.generate(params["typeSomething"])
    erb :index, :locals => {
      :message_visibility => 'visible',
      :message => message
    }
  end
end