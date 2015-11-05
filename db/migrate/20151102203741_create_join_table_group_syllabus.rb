class CreateJoinTableGroupSyllabus < ActiveRecord::Migration
  def change
    create_join_table :groups, :sullabuses do |t|
      # t.index [:group_id, :sullabus_id]
      # t.index [:sullabus_id, :group_id]
    end
    reversible do |l|
		l.up do
		execute("ALTER TABLE group_syllabus ADD FOREIGN KEY (group_id) REFERENCES groups(id)")
		execute("ALTER TABLE group_syllabus ADD FOREIGN KEY (syllabus_id) REFERENCES sulabusses(id)")
		execute("ALTER TABLE group_syllabus ADD PRIMARY KEY (group_id, syllabus_id)")
		end
	end    
  end
end
