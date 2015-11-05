class User < ActiveRecord::Base
	 belongs_to :teacher
	 belongs_to :student
	 belongs_to :message
	 has_many :afiles
	 
	 validates :login, presence: true, length: {minimum: 2, maximum: 255}
	 validates :email, presence: true, uniqueness: {case_sensitive: false},
            format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
     validates :password, length: {minimum: 6, if: 'password.present?'}, presence: {on: :create}
	 
	 scope :ordering,->{order(:login)}
end
