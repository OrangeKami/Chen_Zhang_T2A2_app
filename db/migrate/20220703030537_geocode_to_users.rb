class GeocodeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :latitude, :float, {:precision=>10, :scale=>6}
    add_column :users, :longtitude, :float, {:precision=>10, :scale=>6}
    add_column :users, :postcode, :string
  end
end
