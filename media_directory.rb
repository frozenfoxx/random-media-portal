class MediaDirectory
    def initialize(directory)
        @directory = directory
    end

    def image_files
        # Return a list of all image files

        image_types = "gif,jpg,jpeg,png"
        Dir["#{@directory}/*.{#{image_types}}"]
    end

    def random_image
        # Returns a random image file from the directory

        choice = rand(0..image_files.size-1)
        image_files[choice]
    end

    def random_video
        # Returns a random video file from the directory

        choice = rand(0..video_files.size-1)
        video_files[choice]
    end

    def video_files
        # Return a list of all video files

        video_types = "avi,mkv,mp4,webm"
        Dir["#{@directory}/*.{#{video_types}}"]
    end
end