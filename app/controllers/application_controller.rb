require 'sinatra/base'

class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :"../views/super_hero"
  end

  post '/teams' do
    @team = Team.new(params[:team])
    params[:team][:heros].each do |details|
      Hero.new(details)
    end
    @heros = Hero.all
    erb :"../views/team"
  end

end
