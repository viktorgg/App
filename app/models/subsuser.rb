class Subsuser < ApplicationRecord
	belongs_to :user
	belongs_to :sub
end
