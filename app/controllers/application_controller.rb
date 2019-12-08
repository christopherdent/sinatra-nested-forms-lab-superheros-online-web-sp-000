require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end
    
    post '/teams' do
      
      @team = Team.new
      
      binding.pry 
      erb :team 
    end 
    

end


@pirate = Pirate.new(params[:pirate])