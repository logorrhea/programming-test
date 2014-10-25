Armory::Application.routes.draw do
    get '/characters', to: "characters#index", :as => :characters
    post '/characters', to: "characters#index", :as => :search_characters

    root to: "characters#index"
end
