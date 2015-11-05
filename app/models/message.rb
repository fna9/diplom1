class Message < ActiveRecord::Base

	has_and_belongs_to_many :afiles
	has_many :users
	
	validates :text, presence: true
end
