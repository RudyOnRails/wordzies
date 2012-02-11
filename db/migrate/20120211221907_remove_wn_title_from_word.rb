class RemoveWnTitleFromWord < ActiveRecord::Migration
  def up
    remove_column :words, :wn_title
  end

  def down
    add_column :words, :wn_title, :integer
  end
end
