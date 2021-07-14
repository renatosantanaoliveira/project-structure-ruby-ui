[ruby-image]: https://img.shields.io/badge/ruby-2.7.2-red
[ruby-url]: https://www.ruby-lang.org/pt/
[cucumber-image]: https://img.shields.io/badge/cucumber-5.3.0-brightgreen
[cucumber-url]: https://cucumber.io/docs/installation/ruby/
[capybara-image]: https://img.shields.io/badge/capybara-3.35.3-purple
[capybara-url]: https://teamcapybara.github.io/capybara/
[rspec-image]: https://img.shields.io/badge/rspec-3.10.0-red
[rspec-url]: https://rspec.info/documentation/
[site_prism-image]: https://img.shields.io/badge/site_prism-3.7.1-black
[site_prism-url]: https://rdoc.info/gems/site_prism/frames
[selenium_wedriver-image]:https://img.shields.io/badge/selenium-3.142.6-beige
[selenium_wedriver-url]:https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings
[report_builder-image]: https://img.shields.io/badge/report_builder-1.9-blue
[report_builder-url]: https://reportbuilder.rajatthareja.com/

# Challenge
[![Ruby Version][ruby-image]][ruby-url]
[![Capybara Version][capybara-image]][capybara-url]
[![Cucumber Version][cucumber-image]][cucumber-url]
[![Rspec Version][rspec-image]][rspec-url]
[![Selenium WebDriver Version][selenium_wedriver-image]][rspec-url]
[![SitePrism Version][site_prism-image]][selenium_wedriver-url]
[![ReportBuilder Version][report_builder-image]][report_builder-url]

Estrutura do projeto:
```
./
│  ├── features/
│  │   ├── hooks/
│  │   ├── pages/
│  │   ├── specifications/
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

Assumimos que você já ***possui o Ruby disponível no terminal***. Agora você precisará do **ChormeDriver** disponível no terminal e do **bundler** para baixar todas as dependências dos pacotes do projeto, conforme o arquivo **[Gemfile.lock](https://github.com/renatosantanaoliveira/project-structure-ruby-ui/blob/main/Gemfile.lock)**.

Para instalar o bundler executando o seguinte comando no terminal:
```
gem install bundler
```
Para baixar as dependências de pacote deste projeto abra a pasta "**[raiz](https://github.com/renatosantanaoliveira/project-structure-ruby-ui/tree/main/)**" no terminal e execute o comando:
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

Para executar os testes localmente deste projeto "**[/](https://github.com/renatosantanaoliveira/project-structure-ruby-ui/tree/main/)**" no terminal e execute o comando:
```
cucumber
```
Ou para um cenário específico:
```
cucumber -t @myTag
```


## Alternando execução entre ambientes

Por padrão os testes iram rodar usando a url de **DEV** conforme arquivo "**[environments.yml](https://github.com/renatosantanaoliveira/project-structure-ruby-ui/blob/main/features/support/config/environments.yml)**". 

Os ambiente disponíveis são:
- dev
- qa
- prod

Para alterar em tempo de execução, adiciona o parâmetro "**ENV**" no terminal:
```
cucumber ENV=qa
```

Para alterar o padrão vá até o arquivo "**[cucumber.yml](https://github.com/renatosantanaoliveira/project-structure-ruby-ui/blob/main/cucumber.yml)**" e altere a linha 4:
```
default: (...) -p dev
```
