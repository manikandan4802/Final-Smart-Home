class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :agent_name
      t.string :phone_number

      t.timestamps
    end
  end
end
