require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
        erb :super_hero
        
    end 

    post '/team' do
        @team = Team.new(params[:team])
        team_members = params[:team][:heroes]
        @heroes = team_members.collect do |member_details|
            Hero.new(member_details)
        end
        erb :team
    end 
end
