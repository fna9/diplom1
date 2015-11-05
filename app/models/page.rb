class Page < ActiveRecord::Base

	has_and_belongs_to_many :subjects
	has_and_belongs_to_many :pages
	
    validates :visibility, presence: true
    validates :header, presence: true
    validates :contents, presence: true
    validates :alias, presence: true
end
