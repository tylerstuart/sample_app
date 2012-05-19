class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :recipe_title
      t.string :discription
      t.string :ingredients
      t.string :prep_time
      t.string :cooking_time

      t.timestamps
    end
  end
end
