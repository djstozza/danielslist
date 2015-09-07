# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  username        :text
#  name            :text
#  surname         :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :text
#  admin           :boolean          default(FALSE)
#

class User < ActiveRecord::Base
	has_secure_password

	has_many :items

	validates :email, :presence => true, :uniqueness => true
	validates :username, :presence => true, :uniqueness => true
	validates :name, :presence => true
	validates :surname, :presence => true
	validates :password, :length => {:minimum => 8}
end
