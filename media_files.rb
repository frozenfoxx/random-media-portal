class MediaFiles
    def initialize(directory)
        @directory = directory
        @file_list = []
        update_files
    end

    def update_files
        # Update the internal @file_list

        @file_list = []

        Dir.foreach(@directory) do |file|
            next if file == '.' or file == '..'
            @file_list.push(file)
        end
    end

    attr_reader :file_list
end