# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :text
#  description :text
#  price       :float
#  image       :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Item < ActiveRecord::Base
	validates :name, :presence => true
	validates :description, :presence => true
	
end
