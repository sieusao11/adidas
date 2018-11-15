class Subcolor < ApplicationRecord
	belongs_to :color
	validates :subcolor_name, uniqueness: true, presence: true,
	length: { minimum: 3 }
	validates :color_id, presence: true,
	length: { minimum: 3 }
	has_many :products
end
