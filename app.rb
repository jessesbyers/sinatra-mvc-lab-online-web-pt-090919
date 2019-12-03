require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    binding.pry
    @pig_latinized = PigLatinizer.new
    text = params[:user_phrase]

    erb :piglatinize
  end
end
