require 'sinatra/base'

class RandomMediaPortal < Sinatra::Base
    
    configure do
        set :bind, '0.0.0.0'
        set :root, File.dirname(__FILE__)
        enable :logging
        enable :sessions
        file = File.new("#{settings.root}/log/#{settings.environment}.log", 'a+')
        file.sync = true
    end

    get '/' do
        erb :index
    end

    # FIXME: something wrong with the config.ru, shouldn't need this
    run!
end