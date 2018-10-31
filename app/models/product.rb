class Product < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :productname, presence: true,
	length: { minimum: 1 }
end
