# == Schema Information
#
# Table name: recipes
#
#  id           :integer         not null, primary key
#  recipe_title :string(255)
#  discription  :string(255)
#  ingredients  :string(255)
#  prep_time    :string(255)
#  cooking_time :string(255)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

class Recipe < ActiveRecord::Base
  attr_accessible :cooking_time, :discription, :ingredients, :prep_time, :recipe_title

  validates :discription,  presence: true
  validates :ingredients,  presence: true
  validates :recipe_title, presence: true, length: { maximum: 50 }



end


