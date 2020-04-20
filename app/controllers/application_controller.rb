require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = {:name => params[team][name], :motto => params[team][motto]}
      @heros = params[team][heroes]
      erb :team
    end

end
