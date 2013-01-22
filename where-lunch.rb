require 'sinatra'

before do
  @lunch = ["Ebene Cafe",
            "Le FouQuet Akwa",
            "Pizza day a Chococho", 
            "Saker Akwa", 
            "White House Bonaprisso", 
            "Belavie Bonanjo", 
            "Le provincial Bonanjo"]
end

get '/' do
  @place = @lunch[rand(@lunch.count)]
  erb :index
end
  
