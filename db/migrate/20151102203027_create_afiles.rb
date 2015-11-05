class CreateAfiles < ActiveRecord::Migration
  def change
    create_table :afiles do |t|
      t.text :description
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
