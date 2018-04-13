class Subsuser < ApplicationRecord
	belongs_to :user
	belongs_to :sub
	validate :validation
end

def validation
	if self.sub < 10
		if self.sub.subuser.where(role: "teacher").count >= 2 
			&& self.role == "teacher" self.error.add(:user, "No more than 2 teachers" 
			throw :abort
		end
		
		if self.sub.sunuser.where(role: "student").count >= 10 
			&& self.role == "student" self.error.add(:user, "No more than 10 users"
			throw :abort
		end
  	end
end
