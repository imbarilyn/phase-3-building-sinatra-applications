require 'sinatra'

class ApplicationController < Sinatra::Base

    set :default_content_type, 'application/json'    
    get '/:name' do |n|
        "<h1>Helo #{n}!!</h1>"
    end

    get '/add/:num1/:num2' do
        a = params[:num1].to_i 
        b = params[:num2].to_i
        sum = a + b
        {result: sum}.to_json
    end
    end


