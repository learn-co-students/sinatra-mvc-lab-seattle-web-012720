require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'
require 'pry'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        # binding.pry
        user_phrase = params[:user_phrase]
        pig = PigLatinizer.new
        @pig_text = pig.piglatinize(user_phrase)
        @pig_text
        erb :site_output
    end

    # get '/result' do
        # erb :site_output
    # end
end