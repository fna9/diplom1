class Afile < ActiveRecord::Base

	has_and_belongs_to_many :messages
	belongs_to :user
	
end
