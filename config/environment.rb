# Set the addresses to listen on
ENV["HOST"] = ENV["HOST"] || '0.0.0.0'

# Set the directory to scan for media
ENV["MEDIA_DIRECTORY"] = ENV["MEDIA_DIRECTORY"] || '/data'

# Set the mode to run the server in
ENV["MEDIA_MODE"] = ENV["MEDIA_MODE"] || 'video'

# Set the port to listen on
ENV["PORT"] = ENV["PORT"] || '4567'