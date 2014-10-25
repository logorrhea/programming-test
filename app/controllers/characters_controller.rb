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
        @characters = Character.search(params[:q])
        respond_to do |format|
            format.html
        end
    else
        redirect_to :index, flash: { error: 'No search criteria entered' }
    end
end

end
