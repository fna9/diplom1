class CreateJoinTableAfileMessage < ActiveRecord::Migration
  def change
    create_join_table :afiles, :messages do |t|
      # t.index [:afile_id, :message_id]
      # t.index [:message_id, :afile_id]
    end
    reversible do |l|
		l.up do
		execute("ALTER TABLE afile_message ADD FOREIGN KEY (afile_id) REFERENCES afiles(id)")
		execute("ALTER TABLE afile_message ADD FOREIGN KEY (message_id) REFERENCES messages(id)")
		execute("ALTER TABLE afile_message ADD PRIMARY KEY (afile_id, message_id)")
		end
	end 
  end
end
