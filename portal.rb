require 'sinatra'

set :bind '0.0.0.0'

get '/' do
    "Welcome"
end

put '/' do
    "Hello"
end