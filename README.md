# Welcome to My Api
***
My Api

<h3 align="left">Languages and Tools:</h3>
<p align="left"> <img src='https://cdn.svgporn.com/logos/postman.svg' width='100' height='50' /> <a href="https://rubyonrails.org" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/rails/rails-original-wordmark.svg" alt="rails" width="40" height="40"/> </a> <a href="https://www.ruby-lang.org/en/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/ruby/ruby-original.svg" alt="ruby" width="40" height="40"/> </a> <a href="https://www.sqlite.org/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/sqlite/sqlite-icon.svg" alt="sqlite" width="40" height="40"/> </a> </p>

# Demo


## Task
The challenge in this project was to generate the token using jwt to encode and decode the token
Find User With Token:
 
```ruby 
    def authenticate_user
      header = request.headers['Authorization']
      token = header.split(' ').last if header
      begin
        decoded = JWT.decode(token, Rails.application.secrets.secret_key_base, true, algorithm: 'HS256')
        @current_user = User.find(decoded[0]['user_id'])
      rescue JWT::DecodeError
        render json: { error: 'Authentication failed' }, status: :unauthorized
      end
    end
```

## Description
Using Rails as an API means a user is provided a web application and also an accessible API. An Application Programming Interface (API) is a computing interface that defines interactions between multiple software intermediaries.

Create Rails Application For Api:
```bash
rails new my_api --api
```
## Installation
gem  install  my_api
cd nessary folder and try it:
bundle install
npm install

## Usage
```ruby
    post '/login', to: 'sessions#create'
    post '/register', to: 'registrations#create'
    resources :communities
```

### The Core Team


<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering Schools Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px'></span>
