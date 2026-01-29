require 'httparty'
require 'dotenv/load'
require 'uri' # Necessário para codificar espaços na URL

class Apiclima
    BASE_URL = "https://api.openweathermap.org/data/2.5/weather"
    API_KEY = ENV["CHAVE_API"] 

    def self.buscar(cidade)
        # Codifica "Paulo Afonso" para "Paulo%20Afonso" para não quebrar a URL
        cidade_formatada = URI.encode_www_form_component(cidade)
        
        resposta_api = HTTParty.get("#{BASE_URL}?q=#{cidade_formatada}&appid=#{API_KEY}&units=metric&lang=pt_br")

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

    def self.previsao(cidade)
      cidade_formatada = URI.encode_www_form_component(cidade)
      
      url_previsao = "https://api.openweathermap.org/data/2.5/forecast?q=#{cidade_formatada}&units=metric&appid=#{API_KEY}&lang=pt_br"
      
      resposta_api_previsao = HTTParty.get(url_previsao)

      # Debug: Se der erro, avisa no terminal
      unless resposta_api_previsao.success?
        puts "Erro API Previsão: #{resposta_api_previsao.code}" 
        return []
      end

      dados = resposta_api_previsao.parsed_response
      
      previsoes_por_dia = []
      datas_processadas = []

      dados["list"].each do |item|
        data_do_item = item["dt_txt"].split(" ")[0] 
    
        
        if !datas_processadas.include?(data_do_item) && data_do_item != Time.now.strftime("%Y-%m-%d")
            previsoes_por_dia << item
            datas_processadas << data_do_item
        end
      
        break if previsoes_por_dia.size >= 5 
      end

      previsoes_por_dia 
    end
end