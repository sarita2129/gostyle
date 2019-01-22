class AddTitleToContracts < ActiveRecord::Migration[5.2]
  def change
    add_column :contracts, :title, :text
  end
end
