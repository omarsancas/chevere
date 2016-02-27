class CreateBeerCatalogs < ActiveRecord::Migration
  def change
    create_table :beer_catalogs do |t|
      t.string :beer_name
      t.float :price

      t.timestamps null: false
    end
  end
end
