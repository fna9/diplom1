class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :title, :null => false
      t.string :type, :null => false
      t.integer :offset, :null => false
      t.integer :min_offset, :null => false
      t.integer :max_offset, :null => false
      t.boolean :necessarily, :null => false

      t.timestamps null: false
    end
  end
end
