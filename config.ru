# Set up environment
require './config/environment'

# Require all files
Dir.glob(File.dirname(__FILE__) + "/*.rb").each { |file| require file }

run RandomMediaPortal