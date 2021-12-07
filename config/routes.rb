Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    namespace :api do
      get "/films" => "films#index"
      post "/films" => "films#create"
      get "/films/:id" => "films#show"
      patch "/films/:id" => "films#update"
      delete "/films/:id" => "films#destroy"
    end
end
