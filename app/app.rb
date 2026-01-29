require 'sinatra'
require 'dotenv/load'
require_relative 'model/clima'
require_relative 'api_clima'
require 'time'

get '/clima' do 
    erb :index
end

get "/" do
  @cidade = params[:city]
  if @cidade && !@cidade.strip.empty?
    @clima = Apiclima.buscar(@cidade)
    
    if @clima && params[:mostrar_previsao] == "true"
      @proximos_dias = Apiclima.previsao(@cidade) 
    end
  end
  erb :index
end


