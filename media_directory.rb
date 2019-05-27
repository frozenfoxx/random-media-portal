class MediaDirectory
    def initialize(directory)
        @directory = directory
        @modes = [
            'audio',
            'image',
            'video'
        ]
    end

    def audio_files
        # Return a list of all audio files

        audio_types = "mp3,ogg,wav"
        Dir["#{@directory}/*.{#{audio_types}}"]
    end

    def image_files
        # Return a list of all image files

        image_types = "gif,jpg,jpeg,png"
        Dir["#{@directory}/*.{#{image_types}}"]
    end

    def has_mode?(mode)
        # Checks if a mode is supported

        @modes.member?(mode)
    end

    def random_audio
        # Returns a random audio file from the directory

        choice = rand(0..audio_files.size-1)

        strip_quotes(File.basename(audio_files[choice]))
    end

    def random_image
        # Returns a random image file from the directory

        choice = rand(0..image_files.size-1)

        strip_quotes(File.basename(image_files[choice]))
    end

    def random_video
        # Returns a random video file from the directory

        choice = rand(0..video_files.size-1)

        strip_quotes(File.basename(video_files[choice]))
    end

    def strip_quotes(quoted_string)
        # Takes a string and strips the quotes from it
        # Params
        # +quoted_string+:: a media file string with quotes

        quoted_string.sub(/^\"/, '').sub(/\"$/, '')

        # In Ruby 2.5+ this method is preferable
        # quoted_string.delete_prefix('"').delete_suffix('"')
    end

    def video_files
        # Return a list of all video files

        video_types = "mp4,ogg,webm"
        Dir["#{@directory}/*.{#{video_types}}"]
    end

    attr_reader :modes
end