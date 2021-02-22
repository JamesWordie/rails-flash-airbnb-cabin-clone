class CreateCabins < ActiveRecord::Migration[6.1]
  def change
    create_table :cabins do |t|
      t.string :name
      t.string :description
      t.integer :price_per_night
      t.integer :number_of_guests
      t.string :location

      t.timestamps
    end
  end
end
