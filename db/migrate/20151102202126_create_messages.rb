class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :header
      t.text :text, :null => false

      t.timestamps null: false
    end
  end
end
