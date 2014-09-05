class Customer < ActiveRecord::Base
	has_many :reservations
	has_many :restaurants, through: :reservations

	has_secure_password

	validates :name, presence: true
	validates :email, presence: true
  validates_uniqueness_of :email, :case_sensitive => false, :message => "That email is already taken."

end
