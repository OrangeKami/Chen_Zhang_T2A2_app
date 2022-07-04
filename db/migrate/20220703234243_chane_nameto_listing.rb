class ChaneNametoListing < ActiveRecord::Migration[7.0]
  def change
    change_table :listings do |t|
      t.rename :photo, :image
    end
  end
end
