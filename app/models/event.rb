class Event < ApplicationRecord
	belongs_to :creator, class_name: :User 

	def created_by
		creator_id = self.creator_id
		creator = User.find(creator_id)
	end
end
