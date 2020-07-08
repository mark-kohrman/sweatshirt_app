class Api::SweatshirtsController < ApplicationController

  def index
    @sweatshirts = Sweatshirt.all
    render 'index.json.jb'
  end

  def show
    @sweatshirt = Sweatshirt.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @sweatshirt = Sweatshirt.create(
      fabric: params[:fabric],
      color: params[:color],
      price: params[:price]
    )
    render 'show.json.jb'
  end
end
