class AddAncestryToDepartments < ActiveRecord::Migration[6.1]
  def change
    add_column :departments, :ancestry, :string
    add_column :departments, :ancestry_depth, :integer, :default => 0
    add_index :departments, :ancestry
  end
end
