class Sub < ApplicationRecord
	has_many :subsusers
	has_many :users, through: :subsusers
	validate :validation
end
