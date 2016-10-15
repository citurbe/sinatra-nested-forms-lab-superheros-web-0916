require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do

      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @hero_1_name = params[:team][:heroes][0][:name]
      @hero_1_power = params[:team][:heroes][0][:power]
      @hero_1_bio = params[:team][:heroes][0][:bio]
      @hero_2_name = params[:team][:heroes][1][:name]
      @hero_2_power = params[:team][:heroes][1][:power]
      @hero_2_bio = params[:team][:heroes][1][:bio]
      @hero_3_name = params[:team][:heroes][2][:name]
      @hero_3_power = params[:team][:heroes][2][:power]
      @hero_3_bio = params[:team][:heroes][2][:bio]

      erb :team
    end

end
