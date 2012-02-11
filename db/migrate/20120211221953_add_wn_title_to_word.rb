class AddWnTitleToWord < ActiveRecord::Migration
  def change
    add_column :words, :wn_title, :string
  end
end
