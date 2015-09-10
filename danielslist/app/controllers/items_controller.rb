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
  	if (params[:file] == nil)
      item_details = item_params
      item_details[:image] = 'http://fillmurray.com/200/200'
      item = @current_user.items.create item_details
      redirect_to item
    else
    # item = Item.create item_params
  	 response = Cloudinary::Uploader.upload params[:file]
      item_details = item_params
      item_details[:image] = response["url"]
      item = @current_user.items.create item_details
      redirect_to item
    end
    
    if item.category_id == 'personals' || item.category_id == 'community'
        item_params[:price] = nil
    end

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
