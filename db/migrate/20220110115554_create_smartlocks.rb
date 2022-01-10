class CreateSmartlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :smartlocks do |t|
      t.string :serial_num
      t.references :company, null: false, foreign_key: true
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
