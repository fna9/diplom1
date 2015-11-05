class Subject < ActiveRecord::Base

	belongs_to :subject
	has_many :students
	has_and_belongs_to_many :groups
	
	validates :title, presence: true
	validates :type, presence: true
	validates :type_of_reporting, presence: true
end
