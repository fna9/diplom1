class Syllabus < ActiveRecord::Base

	has_and_belongs_to_many :groups
	has_many :students
	belongs_to :subject
	
	validates :code, presence: true, uniqueness: true
	validates :title, presence: true
	validates :level, presence: true
	validates :form_of_study, presence: true
	validates :training_period, presence: true
end
