class AddAmountToContracts < ActiveRecord::Migration[5.2]
  def change
    add_column :contracts, :amount, :float
  end
end
