class CreateWords < ActiveRecord::Migration
  def up
    create_table :words do |t|
      t.string :word
      t.text :can_word
      t.timestamps
    end
  end
end