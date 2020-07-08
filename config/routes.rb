Rails.application.routes.draw do
  namespace :api do
    get "/sweatshirts" => "sweatshirts#index"
    get "/sweatshirts/:id" => "sweatshirts#show"
  end
end
