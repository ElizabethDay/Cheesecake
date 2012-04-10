class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.text :instructions
      t.text :link
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end
