# == Schema Information
#
# Table name: subcategories
#
#  id          :integer          not null, primary key
#  name        :text
#  created_at  :datetime
#  updated_at  :datetime
#  category_id :integer
#

class Subcategory < ActiveRecord::Base
	belongs_to :category
end
