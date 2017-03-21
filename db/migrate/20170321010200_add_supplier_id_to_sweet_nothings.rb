class AddSupplierIdToSweetNothings < ActiveRecord::Migration[5.0]
  def change
    add_column :sweet_nothings, :supplier_id, :integer
  end
end
