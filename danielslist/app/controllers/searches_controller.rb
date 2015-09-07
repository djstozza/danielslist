class SearchesController < ApplicationController
	
	def results
		@items = Item.where("description ILIKE ? OR name ILIKE ?", "%#{ params[:search] }%", "%#{ params[:search] }%")
	end

end

