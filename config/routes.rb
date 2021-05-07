Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/name", controller: "names", action: "name"
  get "/randnum", controller: "random_nums", action: "randnum"
  get "/url_randnum/:usernum", controller: "random_nums", action: "randnum"

  post "/body_guess", controller: "random_nums", action: "randnum"
  post "/body_credentials", controller: "random_nums", action: "body_credentials"
end