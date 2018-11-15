class Producttype < ApplicationRecord
	has_many :products
	validates :producttype_name, uniqueness: true, presence: true,
	length: { minimum: 3 }
end
