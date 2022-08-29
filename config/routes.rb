Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/states.json" => "states#index_abbr"

  get "/states/:code" => "states#show"

  get "/data.json" => "states#index_state_data"
end
