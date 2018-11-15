class Sport < ApplicationRecord
	has_many :products
	validates :sport_name, uniqueness: true, presence: true,
	length: { minimum: 3 }
end
