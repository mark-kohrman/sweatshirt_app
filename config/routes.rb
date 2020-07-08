Rails.application.routes.draw do
  namespace :api do
    get "/sweatshirts" => "sweatshirts#index"
    get "/sweatshirts/:id" => "sweatshirts#show"
    post "/sweatshirts" => "sweatshirts#create"
    patch "/sweatshirts/:id" => "sweatshirts#update"
    
  end
end
