# Neon Automation

Follow the instructions below, to run front-end, mobile and API automation.

## Prerequisites

```
Ruby 2.4.2
Chromedriver 2.40
Bundler
```

## Get start

Install all frameworks and gems running:

```
bundle install
```
Then use the commands below, to run the automation:

```
Front-End Automation:
cucumber -t @invalid_login

cucumber -t @question_validation

cucumber -t @customer_registration

cucumber -t @services_validation

Mobile Automation:
calabash-android run Cadastro_de_Clientes.apk

API Automation:
Just need to import the Json file and run using Postman
```
