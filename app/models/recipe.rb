# == Schema Information
#
# Table name: recipes
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  description  :string(255)
#  instructions :text
#  link         :text
#  created_at   :datetime
#  updated_at   :datetime
#

class Recipe < ActiveRecord::Base
  attr_accessible :name, :description, :instructions, :link
  validates :name, :length => { :minimum => 2 }
  validates :name, :length => { :maximum => 255 }
end
