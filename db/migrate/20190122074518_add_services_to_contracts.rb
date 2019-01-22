class AddServicesToContracts < ActiveRecord::Migration[5.2]
  def change
    add_column :contracts, :services, :text
  end
end
