class User < ApplicationRecord
	before_save :downcase_name
	has_many :created_events, class_name: :Event, foreign_key: :creator_id

	private

	def downcase_name
		name.downcase!
	end
end
