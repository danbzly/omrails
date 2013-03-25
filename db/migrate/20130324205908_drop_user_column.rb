class DropUserColumn < ActiveRecord::Migration

  def up
    remove_column :users, :user_id
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end