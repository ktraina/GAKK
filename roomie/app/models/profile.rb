class Profile < ApplicationRecord
	validates :user_name, presence: true, uniqueness: true, :format => {:with => /\A[a-zA-Z\d\-\s]+\z/, :message => "only allows letters, spaces, numbers and dashes"}
	validates :postal_code,:allow_blank => true, :numericality => {:only_integer => true, :greater_than => 0}, :length => { is: 5 }
	validates :gender, presence: true
	validates :cleanliness_level, presence: true
	validates :outgoingness_level, presence: true
	validates :quietness_level, presence: true

	validates :street, :format => {:with => /\A[a-zA-Z\d\-\s]+\z/, :message => "only allows letters, spaces, numbers and dashes"}, :if => :has_residence_already
 	validates :city, :format => {:with => /\A[a-zA-Z\d\-\s]+\z/, :message => "only allows letters, spaces, numbers and dashes"}, :if => :has_residence_already
	validate :is_a_smoker_presence
	validate :pet_friendly_presence



	validates_presence_of :street, :city, :state, :postal_code, :if => :has_residence_already

	geocoded_by :full_street_address   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates

	
	def is_a_smoker_presence
		errors.add(:is_a_smoker, "can't be blank") if is_a_smoker.nil?
	end 

	def pet_friendly_presence
		errors.add(:pet_friendly, "can't be blank") if pet_friendly.nil?
	end

	def full_street_address
		[street, city, state, postal_code].compact.join(', ')
	end

	belongs_to :user
end
