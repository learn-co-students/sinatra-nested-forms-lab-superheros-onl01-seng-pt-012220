require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
        erb :new
    end

    post '/superheroes' do
        @team = Team.new(params[:team])

        params[:team][:members].each do |details|
            Members.new(details)
        end



        @member = Members.all
        erb :show
    end


end
