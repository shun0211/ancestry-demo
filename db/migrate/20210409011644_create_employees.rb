class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :company_id
      t.integer :department_id

      t.timestamps
    end
  end
end
