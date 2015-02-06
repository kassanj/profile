require 'sinatra'

get '/' do 
    File.new("./public/index.html").readlines
end


get '/Resume' do
	File.open("./Resume.pdf", "rb") do |io|
 	reader = PDF::Reader.new(io)
  	puts reader.info
	end
end