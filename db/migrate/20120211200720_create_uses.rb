class CreateUses < ActiveRecord::Migration
  def change
    create_table :uses do |t|
      t.integer :user_id
      t.integer :word_id
      t.text :example

      t.timestamps
    end
  end
end
