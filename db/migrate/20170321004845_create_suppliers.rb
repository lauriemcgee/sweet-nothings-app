class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :book_title
      t.integer :page_number

      t.timestamps
    end
  end
end
