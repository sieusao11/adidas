class Subcategory < ApplicationRecord
	belongs_to :category
	validates :subcategory_name, uniqueness: true, presence: true,
	length: { minimum: 3 }
	validates :category_id, presence: true,
	length: { minimum: 3 }
	has_many :products
end
