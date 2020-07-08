Rails.application.routes.draw do
  namespace :api do
    get "/sweatshirts" => "sweatshirts#index"
  end
end
