# == Schema Information
#
# Table name: items
#
#  id             :integer          not null, primary key
#  name           :text
#  description    :text
#  price          :float
#  image          :text
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
end
