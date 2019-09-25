require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @team_name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @pf = params[:pf]
    @sg = params[:sg]
    @center = params[:c]

    @team = params

    erb :team
  end
end
