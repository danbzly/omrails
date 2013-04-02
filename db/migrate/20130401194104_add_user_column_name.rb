class AddUserColumnName < ActiveRecord::Migration
  def self.up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :biz_name, :string
  end

  def down
  end
end
