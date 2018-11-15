class Category < ApplicationRecord
	has_many :products
	validates :category_name, uniqueness: true, presence: true,
	length: { minimum: 3 }
	has_many :subcategories, dependent: :destroy
end
