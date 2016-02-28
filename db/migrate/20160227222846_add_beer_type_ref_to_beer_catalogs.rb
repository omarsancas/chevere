class AddBeerTypeRefToBeerCatalogs < ActiveRecord::Migration
  def change
    add_reference :beer_catalogs, :beer_type, index: true
    add_foreign_key :beer_catalogs, :beer_types
  end
end
