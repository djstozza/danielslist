class ItemsController < ApplicationController
  def index
  	@items = Item.all
  end

  def show
  	@item = Item.find params[:id]
  end

  def new
    @item = Item.new
  end

  def create
  	# item = Item.create item_params
  	
    item = @current_user.items.create item_params 
    redirect_to item
  end

  def edit
  	@item = Item.find params[:id]
  end

  def update
  	item = Item.find params[:id]
  	item.update item_params
    redirect_to item_path
  end

  def destroy
  	item = Item.find params[:id]
  	item.destroy
  	redirect_to user_path
  end

  private
  def item_params
  	params.require(:item).permit(:name, :description, :price, :image, :subcategory_id, :category_id, :user_id)
  end


end
