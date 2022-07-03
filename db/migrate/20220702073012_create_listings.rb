class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.decimal :price
      t.string :photo
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
