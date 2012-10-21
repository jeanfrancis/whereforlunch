require 'sinatra'

before do
  @lunch = ["Ruby", 
            "BLT", 
            "Itsu", 
            "Silvio's", 
            "Fuzzy's"]
end

get '/' do
  @place = @lunch[rand(@lunch.count)]
  erb :index
end
  