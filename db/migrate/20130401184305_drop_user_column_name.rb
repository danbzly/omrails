class DropUserColumnName < ActiveRecord::Migration
   def up
    remove_column :users, :name 
    remove_column :users, :Biz_name
  end

  def down
  end
end
