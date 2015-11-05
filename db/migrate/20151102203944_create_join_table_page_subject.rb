class CreateJoinTablePageSubject < ActiveRecord::Migration
  def change
    create_join_table :pages, :subjects do |t|
      # t.index [:page_id, :subject_id]
      # t.index [:subject_id, :page_id]
    end
    reversible do |l|
		l.up do
		execute("ALTER TABLE page_subject ADD FOREIGN KEY (page_id) REFERENCES pages(id)")
		execute("ALTER TABLE page_subject ADD FOREIGN KEY (subject_id) REFERENCES subjects(id)")
		execute("ALTER TABLE page_subject ADD PRIMARY KEY (page_id, subject_id)")
		end
	end     
  end
end
