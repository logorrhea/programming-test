class CharactersController < ApplicationController

def index
    respond_to do |format|
        format.html
    end
end

def show
    @character = Character.find(params[:id].to_i)
    puts @character.inspect
    respond_to do |format|
        format.html
    end
end

def search
    if params[:q]
        search_string = params[:q].gsub(/[^a-zA-Z0-9]/, '')
        @characters = Character.search(search_string)
        respond_to do |format|
            format.html
        end
    else
        redirect_to :index, flash: { error: 'No search criteria entered' }
    end
end

end
