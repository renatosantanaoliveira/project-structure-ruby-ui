# Project structure ruby UI

Neste projeto estamos utilizando o **Ruby 2.7.2** e os seguintes pacotes:
```
gem 'capybara'
gem 'cucumber'
gem 'json'
gem 'report_builder'
gem 'rspec'
gem 'selenium-webdriver'
gem 'site_prism'
gem 'aws-sdk-secretsmanager', '~> 1.44'
```

Estrutura do projeto:
```
./
│  ├── features/
│  │   ├── hooks/
│  │   ├── pages/
│  │   ├── specs/
│  │   ├── step_definitions/
│  │   └── support/
│  │       ├── config/
│  │       │   └── environments.yml
│  │       ├── helpers/
│  │       │   ├── aws_secrets_helper.rb
│  │       │   ├── page_helper.rb
│  │       │   └── screenshot_helper.rb
│  │       ├── env.rb
│  │       └── report_builder.rb
│  ├── reports/
│  │   ├── report-builder/
│  │   └── screenshots/
│  └── cucumber.yml
├── .gitignore
├── Gemfile
├── Gemfile.lock
└── README.md
```


## Configurando ambiente local

Assumimos que você já ***possui o Ruby disponível no terminal***. Agora você precisará do **ChormeDriver** disponível no terminal e do **bundler** para baixar todas as dependências dos pacotes do projeto, conforme o arquivo **[Gemfile.lock](https://github.com/ZupIT/livepass-qa-ui/blob/master/Gemfile.lock)**.

Para instalar o bundler executando o seguinte comando no terminal:
```
gem install bundler
```
Para baixar as dependências de pacote deste projeto abra a pasta "**[raiz](https://github.com/ZupIT/livepass-qa-ui/tree/master/)**" no terminal e execute o comando:
```
bundler install
```

Para configurar o **[ChormeDriver](https://chromedriver.chromium.org/downloads)** baixe o arquivo referente a sua versão de navegador. 
No **Windows**: Descompacte na pasta onde ele irá ficar e adicione-o no PATH do sistema. 
No **Linux**: Descompacte o arquivo, abra o terminal nesta pasta e execute os seguintes comandos:
```
sudo mv chromedriver /usr/bin/chromedriver
sudo chown root:root /usr/bin/chromedriver
sudo chmod +x /usr/bin/chromedriver
```
No **MacOS**: Descompacte o arquivo, abra o terminal nesta pasta e execute os seguintes comandos:
```
sudo mv chromedriver /usr/local/bin
sudo chmod +x /usr/bin/chromedriver
```
## Plugin AWS toolkit plugin

Para utilizar o "**[AWS Secrets Manager](https://docs.aws.amazon.com/pt_br/secretsmanager/latest/userguide/intro.html)**" , será necessário instalar o plugin AWS toolkit plugin na IDE utilizada.

VSCode
Para instalar o plugion no Visual Studio Code deve seguir os passos neste link "**[VSCode](https://aws.amazon.com/visualstudiocode/)**"

RubyMine
Para instalar o plugion na Jetbrains deve seguir os passos neste link "**[RubyMine](https://docs.aws.amazon.com/toolkit-for-jetbrains/latest/userguide/setup-toolkit.html)**"

## Executando testes localmente

Para executar os testes localmente deste projeto "**[/](https://github.com/ZupIT/livepass-qa-ui/tree/master/)**" no terminal e execute o comando:
```
cucumber
```
Ou para um cenário específico:
```
cucumber -t @myTag
```


## Alternando execução entre ambientes

Por padrão os testes iram rodar usando a url de **DEV** conforme arquivo "**[environments.yml](https://github.com/ZupIT/livepass-qa-ui/blob/master/features/support/config/environments.yml)**". 

Os ambiente disponíveis são:
- dev
- qa
- prod

Para alterar em tempo de execução, adiciona o parâmetro "**ENV**" no terminal:
```
cucumber ENV=qa
```

Para alterar o padrão vá até o arquivo "**[cucumber.yml](https://github.com/ZupIT/livepass-qa-ui/blob/master/cucumber.yml)**" e altere a linha 4:
```
default: (...) -p dev
```
