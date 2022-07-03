class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    def change
    rename_column :listings, :photo, :image
  end
  end
end
