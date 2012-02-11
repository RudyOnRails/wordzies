class ChangingWordsModel < ActiveRecord::Migration
  def up
    rename_column :words, :wn_pronunciation, :wn_id
    change_column :words, :wn_id, :integer
  end

  def down
    rename_column :words, :wn_id, :wn_pronunciation
    change_column :words, :wn_pronunciation, :string
  end
end
