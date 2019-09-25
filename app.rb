require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @team_name = params[:name]
    params.delete("name")
    params.delete("submit")

    @team = params

    erb :team
  end
end
