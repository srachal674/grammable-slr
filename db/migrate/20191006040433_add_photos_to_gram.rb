class AddPhotosToGram < ActiveRecord::Migration[5.2]
  def change
    add_column :grams, :photos, :string
  end
end
