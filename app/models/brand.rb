class Brand < ApplicationRecord
	has_many :products
	validates :brand_name, uniqueness: true, presence: true,
	length: { minimum: 3 }
end
