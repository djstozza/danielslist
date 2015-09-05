class SubcategoriesController < ApplicationController
  def index
  	@subcategories = Subcategory.all
  end

  def show
  	@subcategory = Subcategory.find params[:id]
  end

  def new
  	@subcategory = Subcategory.new
  end
  

  def create
  	subcategory = Subcategory.create subcategory_params
  	redirect_to subcategory
  end


  private
  def subcategory_params
  	params.require(:subcategory).permit(:name, :category_id)
  end
end
