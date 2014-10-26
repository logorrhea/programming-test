Armory::Application.routes.draw do
    get '/characters', to: "characters#index", :as => :characters
    get '/characters/search', to: "characters#search", :as => :search_characters
    get '/characters/:id', to: "characters#show", :as => :show_character
    get '/characters/:id/desc', to: "characters#desc", :as => :character_description

    root to: "characters#index"
end
