class AddWnIdToWord < ActiveRecord::Migration
  def change
    add_column :words, :wn_id, :integer
  end
end
