require 'sinatra/base'

class App < Sinatra::Base
  set :views, proc { File.join(root, '../views/') }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team])

    params[:team][:members].each { |member| Member.new(member) }
    @members = Member.all
    erb :team
  end
end
