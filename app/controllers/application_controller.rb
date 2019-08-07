require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do 
        erb :super_hero
    end 

    post '/teams' do 
        @team = Team.new(name: params["team"]["name"], motto: params["team"]["motto"])
        @m
    end 


end


#  {"team"=>
#   {"name"=>"hello",
#    "motto"=>"what up",
#    "member"=>
#     [{"name"=>"andrew", "power"=>"invisability", "bio"=>"what up i am cool"},
#      {"name"=>"AJ", "power"=>"floating", "bio"=>"i love to float"},
#      {"name"=>"Meghann", "power"=>"fly", "bio"=>"i am cooler than the floater "}]}}