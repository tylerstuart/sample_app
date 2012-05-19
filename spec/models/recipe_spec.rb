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

require 'spec_helper'

describe Recipe do
  pending "add some examples to (or delete) #{__FILE__}"
end
