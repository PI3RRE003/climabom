# ⛅ ClimaBom

> Uma aplicação web moderna e minimalista para consulta de previsão do tempo em tempo real, construída com Ruby, Sinatra e Tailwind CSS.

<img width="1920" height="859" alt="Captura de tela 2026-01-29 181417" src="https://github.com/user-attachments/assets/16950192-49ae-460b-b1d1-8504b3fece91" /> 

# 💻 Sobre o Projeto

O **ClimaBom** é um projeto Full Stack simples que consome a API da **OpenWeatherMap** para fornecer dados meteorológicos precisos. O diferencial do projeto está na sua interface limpa utilizando o conceito de **Glassmorphism** e na lógica de back-end que filtra e processa dados brutos da API para entregar uma previsão otimizada de 5 dias.

### ✨ Funcionalidades

- 🔍 **Busca em Tempo Real:** Pesquise o clima de qualquer cidade do mundo.
- 🌡️ **Dados Detalhados:** Temperatura atual, sensação térmica, umidade e velocidade do vento.
- 📅 **Previsão Inteligente:** Visualização dos próximos 5 dias (lógica de filtragem personalizada no Ruby).
- 🎨 **UI Moderna:** Design responsivo com efeito de vidro (Glassmorphism) e ícones dinâmicos.
- 🚀 **Tratamento de Erros:** Mensagens amigáveis caso a cidade não seja encontrada.

## 🛠️ Tecnologias Utilizadas

**Back-end:**
- [Ruby](https://www.ruby-lang.org/pt/) (Linguagem principal)
- [Sinatra](http://sinatrarb.com/) (Micro-framework web)
- [HTTParty](https://github.com/jnunemaker/httparty) (Consumo de API REST)

**Front-end:**
- HTML5 (ERB Templating)
- [Tailwind CSS](https://tailwindcss.com/) (Estilização via CDN)
- FontAwesome (Ícones)

## 🚀 Como Rodar o Projeto

### Pré-requisitos
Antes de começar, você precisa ter instalado em sua máquina:
- [Ruby](https://www.ruby-lang.org/pt/downloads/) (Versão 2.7 ou superior)
- Git

### Passo a Passo

1. **Clone o repositório**
   ```bash
   git clone [https://github.com/seu-usuario/climabom.git](https://github.com/seu-usuario/climabom.git)
   cd climabom

2. **Instale as dependências**
    ```bash
    gem install sinatra httparty dotenv
    bundle install

3. **Configure as Variáveis de Ambiente Crie um arquivo chamado .env na raiz do projeto e adicione sua chave da OpenWeather:**
   ```bash
    CHAVE_API=sua_chave_api_aqui
    Nota: Você pode obter uma chave gratuita em openweathermap.org.

4. **Execute o servidor**
     ```bash
     ruby app.rb

5. **Acesse no navegador Abra http://localhost:4567 para ver a aplicação rodando.** 

    ```bash
    climabom/
    ├── model/
    │   └── clima.rb       # Classe que define o objeto Clima
    ├── views/
    │   └── index.erb      # Front-end (HTML + Ruby Embedded)
    ├── api_clima.rb       # Lógica de consumo e filtro da API
    ├── app.rb             # Controlador principal (Rotas Sinatra)
    ├── .env               # Arquivo de configuração (NÃO COMITAR)
    └── README.md          # Documentação
    ```

# 🧠 Aprendizados
Durante o desenvolvimento deste projeto, foram aplicados conceitos de:

Arquitetura MVC (Model-View-Controller) simplificada.

Manipulação de Arrays e Hashes em Ruby para filtrar dados JSON complexos.

Uso de Variáveis de Ambiente (dotenv) para segurança de dados.

Integração de Back-end com Front-end usando ERB.

# 📄 Licença
Este projeto está sob a licença MIT. Sinta-se livre para usá-lo e modificá-lo.

Feito com 💙 por Vitor Pierre
