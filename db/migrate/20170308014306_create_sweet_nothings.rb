class CreateSweetNothings < ActiveRecord::Migration[5.0]
  def change
    create_table :sweet_nothings do |t|
      t.string :name
      t.string :price
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
