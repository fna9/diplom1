class Teacher < ActiveRecord::Base

	has_and_belongs_to_many :subjects
	belongs_to :user
	
	validates :last_name, presence: true, length: {maximum: 64}
	validates :first_name, presence: true, length: {maximum: 64}
	validates :second_name, presence: true, length: {maximum: 64}
	validates :degree, presence: true
	validates :rank, presence: true
	validates :position, presence: true
	
	validate :check_b_date

	def age(d=nil)
		d||=Date.today
		return unless b_date
		res=d.year-b_date.year
		res-= 1 if Date.new(d.year, b_date.month, b_date.day) > d
		res
	end
	
	def human_age(d=nil)
		"#{age(d)} #{RuPropisju.choose_plural(age(d), 'год', 'года', 'лет')}"
	end
	
private

	def check_b_date
		errors.add(:b_date, :invalid) if b_date && b_date>Date.today
		true
	end
end
