class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :wn_title
      t.array :wn_part_of_speech
      t.array :wn_definition
      t.array :wn_example
      t.array :wn_synonym
      t.string :wn_pronounciation

      t.timestamps
    end
  end
end
