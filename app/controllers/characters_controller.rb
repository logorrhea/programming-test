class CharactersController < ApplicationController

  def index
    if params[:q]
        search_string = params[:q].gsub(/[^a-zA-Z0-9]/, '')
        @characters = Character.search(search_string)
    else
        @characters = Character.all
    end

    respond_to do |format|
      format.html
    end
  end

end
