class CreateJoinTableSubjectTeacher < ActiveRecord::Migration
  def change
    create_join_table :subjects, :teachers do |t|
      # t.index [:subject_id, :teacher_id]
      # t.index [:teacher_id, :subject_id]
    end
    reversible do |l|
		l.up do
		execute("ALTER TABLE subject_teacher ADD FOREIGN KEY (subject_id) REFERENCES subjects(id)")
		execute("ALTER TABLE subject_teacher ADD FOREIGN KEY (teacher_id) REFERENCES teachers(id)")
		execute("ALTER TABLE subject_teacher ADD PRIMARY KEY (subject_id, teacher_id)")
		end
	end 
  end
end
