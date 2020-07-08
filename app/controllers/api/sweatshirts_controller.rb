class Api::SweatshirtsController < ApplicationController

  def index
    @sweatshirts = Sweatshirt.all
    render 'index.json.jb'
  end
end
