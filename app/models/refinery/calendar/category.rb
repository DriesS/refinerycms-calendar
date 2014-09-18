module Refinery
	module Calendar
		class Category < Refinery::Core::BaseModel
			has_many :events
			validates :title, :presence => true, :uniqueness => true
			attr_accessible :title, :description, :position
		end
	end
end
