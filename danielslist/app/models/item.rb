# == Schema Information
#
# Table name: items
#
#  id             :integer          not null, primary key
#  name           :string
#  description    :text
#  price          :float
#  image          :string
#  rooms          :integer
#  area           :integer
#  brand          :string
#  model          :string
#  year           :integer
#  created_at     :datetime
#  updated_at     :datetime
#  subcategory_id :integer
#  user_id        :integer
#  category_id    :integer
#

class Item < ActiveRecord::Base
	belongs_to :subcategory
	belongs_to :user
	
	
	
	validates :name, :presence => true
	validates :description, :presence => true
	validates :price, :presence => true
	validates :category_id, :presence => true
	validates :subcategory_id, :presence => true
end
