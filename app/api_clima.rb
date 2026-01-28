require 'httparty'

class Apiclima
    BASE_URL = "https://api.openweathermap.org/data/2.5/weather"
    API_KEY = "CHAVE_API"

    def self.buscar(cidade)
        resposta_api = HTTParty.get("#{BASE_URL}?=#{cidade}&appid=#{API_KEY}&units=metric&lang=pt-br")

        if resposta_api.success?
          dados = resposta_api.parsed_response

          Clima.new(
            dados["name"],
            dados["main"]["temp"],
            dados["weather"][0]["description"],
            dados["main"]["humidity"],
            dados["wind"]["speed"]
          )
        else
          nil
        end
    end
end