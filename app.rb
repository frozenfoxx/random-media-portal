require 'sinatra/base'
require_relative './media_directory'

class RandomMediaPortal < Sinatra::Base

    configure do
        set :bind, ENV["HOST"]
        set :media_mode, ENV["MEDIA_MODE"]
        set :port, ENV["PORT"]
        set :root, File.dirname(__FILE__)
        set :public_folder, ENV["MEDIA_DIRECTORY"]
        enable :logging
        file = File.new("#{settings.root}/log/#{settings.environment}.log", 'a+')
        file.sync = true
    end

    # Default route
    get '/*' do
        media_directory = MediaDirectory.new(settings.public_folder)

        # Return a view based on mode
        case settings.media_mode
        when 'audio'
            @media_file = media_directory.random_audio
            @media_extension = @media_file.split('.').last
            erb :audio
        when 'image'
            @media_file = media_directory.random_image
            erb :image
        when 'video'
            @media_file = media_directory.random_video
            @media_extension = @media_file.split('.').last
            erb :video
        else
            status 500
            body "Unsupported media mode: #{settings.media_mode}"
        end
    end

    run! if __FILE__ == $0
end