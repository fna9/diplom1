class Group < ActiveRecord::Base

	has_and_belongs_to_many :syllabuses
	has_many :students
	
	validates :title, presence: true
	validates :course, presence: true
	validates :semester, presence: true
end
