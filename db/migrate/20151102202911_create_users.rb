class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login, :null => false, :limit => 32, :unique => true
      t.string :email, :null => false, :unique => true
      t.string :password, :null => false
      t.belongs_to :message, index: true

      t.timestamps null: false
    end
    reversible do |l|
		l.up do
		execute ("ALTER TABLE users ADD FOREIGN KEY (message_id) REFERENCES messages(id)")
		end
	end
  end
end
