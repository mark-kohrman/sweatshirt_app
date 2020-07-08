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

  def update
    @sweatshirt = Sweatshirt.find_by(id: params[:id])
    @sweatshirt.update(
      fabric: params[:fabric] || @sweatshirt.fabric,
      color: params[:color] || @sweatshirt.color,
      price: params[:price] || @sweatshirt.price
    )
    render 'show.json.jb'
  end

  def destroy
    @sweatshirt = Sweatshirt.find_by(id: params[:id])
    @sweatshirt.destroy

    render json: {message: "Your sweatshirt has been destroyed."}
  end


end
