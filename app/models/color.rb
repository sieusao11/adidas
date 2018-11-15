class Color < ApplicationRecord
	has_many :products
	validates :color_name, uniqueness: true, presence: true,
	length: { minimum: 3 }
	has_many :subcolors, dependent: :destroy
end
