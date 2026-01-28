require 'sinatra'
require 'dotenv/load'
require_relative 'model/clima'
require_relative 'api_clima'

get '/' do 
    if params[:city]
      p @clima = Apiclima.buscar(params[:city])

      if @clima.nil?
        @erro = "Cidade não encontrada, tente novamente."
      end
    end
    erb :index
end

post '/clima' do 

end 