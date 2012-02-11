class RemoveWnIdFromWord < ActiveRecord::Migration
  def up
    remove_column :words, :wn_id
  end

  def down
    add_column :words, :wn_id, :integer
  end
end
