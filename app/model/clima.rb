class Clima
  attr_reader :cidade, :temperatura, :condicao, :umidade, :vento, :proximos_dias, :icone
  def initialize(cidade, temperatura, condicao, umidade, vento)
    @cidade = cidade
    @temperatura = temperatura
    @condicao = condicao
    @umidade = umidade
    @vento = vento
    @proximos_dias = []
  end


  def perigoso?
    @temperatura > 35
  end
end