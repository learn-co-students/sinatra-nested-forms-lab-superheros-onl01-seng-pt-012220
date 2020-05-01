require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post'/teams' do 
        
        @new_team = params[:team][:name]
        @motto = params[:team][:motto]
        @members = params[:team][:members]
        @hero_names = []
        @hero_powers =[]
        @hero_bios = []

        @members.each do |member|
           @hero_names << member.values[0]
           @hero_powers << member.values[1]
           @hero_bios << member.values[2]
        end
       
        erb :team 
    end

end
