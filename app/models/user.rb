class User < ApplicationRecord

	before_save :downcase_name
	has_many :created_events, class_name: :Event, foreign_key: :creator_id

	has_many :invitations, foreign_key: :attendee_id
	has_many :attended_events, through: :invitations


	def upcoming_events
		attended_events.select {|e| e.date.to_i > Time.now.to_i}
	end

	def previous_events
		attended_events.select {|e| e.date.to_i < Time.now.to_i}
	end
	
	private

	def downcase_name
		name.downcase!
	end
end
