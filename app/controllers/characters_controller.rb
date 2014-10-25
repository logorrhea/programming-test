class CharactersController < ApplicationController

  def index
    if params[:q]
        @characters = Character.search(params[:q])
    else
        @characters = Character.all
    end

    respond_to do |format|
      format.html
    end
  end

end
