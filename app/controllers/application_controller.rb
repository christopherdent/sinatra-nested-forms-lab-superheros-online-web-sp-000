require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end
    
    post '/teams' do
      
      @team = Team.new(params[:team])
     
      params[:team][:heroes].each do |hero_data|
        SuperHero.new(hero_data)
      end 
      @heroes = SuperHero.all 
      
      erb :team 
    end 
    

end

 