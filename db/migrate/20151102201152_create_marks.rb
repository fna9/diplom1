class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.float :mark, :null => false, numericality: {only_integer: true}
      t.text :comment
      t.belongs_to :rating, index: true
      t.belongs_to :student, index: true

      t.timestamps null: false
    end
  end
end
