class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.boolean :visibility, :null => false
      t.string :header, :null => false
      t.text :contents, :null => false
      t.string :alias, :null => false

      t.timestamps null: false
    end
  end
end
