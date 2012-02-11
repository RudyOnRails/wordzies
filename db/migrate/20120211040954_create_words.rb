class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :wn_title
      t.string :wn_pronunciation

      t.timestamps
    end
  end
end
