require 'sinatra/base'
require_relative './media_directory'

class RandomMediaPortal < Sinatra::Base
    
    configure do
        set :bind, ENV["HOST"]
        set :media_directory, ENV["MEDIA_DIRECTORY"]
        set :media_mode, ENV["MEDIA_MODE"]
        set :port, ENV["PORT"]
        set :root, File.dirname(__FILE__)
        enable :logging
        file = File.new("#{settings.root}/log/#{settings.environment}.log", 'a+')
        file.sync = true
    end

    # Default route
    get '/*' do
        media_directory = MediaDirectory.new(settings.media_directory)
        @media_file = media_directory.random_video

        erb :index
    end

    run! if __FILE__ == $0
end