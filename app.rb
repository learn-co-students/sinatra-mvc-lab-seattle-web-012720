require_relative 'config/environment'

class App < Sinatra::Base
    get ('/') do
        erb :user_input
    end

    post ('/piglatinizer') do
        pig = PigLatinizer.new
        @done = pig.piglatinize(params[:user_phrase])
        # byebug
        erb :results
    end

end
