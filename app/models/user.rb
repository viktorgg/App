class User < ApplicationRecord
	has_many :subsusers
	has_many :subs, through: :subsusers
end
