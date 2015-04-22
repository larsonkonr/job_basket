Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :github do
        get "/", to: "github#index"
        get "/data", to: "data#index"
      end
    end
  end
end
