require 'sinatra/base'

require_relative 'media_files'

class RandomMediaPortal < Sinatra::Base
    
    configure do
        set :bind, ENV["HOST"]
        set :port, ENV["PORT"]
        set :root, File.dirname(__FILE__)
        enable :logging
        file = File.new("#{settings.root}/log/#{settings.environment}.log", 'a+')
        file.sync = true
    end

    get '/' do
        erb :index
    end

    run! if __FILE__ == $0
end