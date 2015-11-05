class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :last_name, :null => false, :limit => 64
      t.string :first_name, :null => false, :limit => 64
      t.string :second_name, :null => false, :limit => 64
      t.date :b_date, :null => false
      t.string :number_of_books, :null => false
      t.index [:last_name, :first_name, :second_name], :unique => true
      t.belongs_to :syllabus, index: true
      t.belongs_to :group, index: true

      t.timestamps null: false
    end
  end
end
