# encoding: UTF-8
class Transaction < ActiveRecord::Base
	belongs_to :boiler_room
	belongs_to :consumer

	after_save :add_total_values
	after_destroy :destroy_total_values

	def add_total_values
		self.consumer.total += self.value
		self.boiler_room.total += self.value
		self.consumer.save  && self.boiler_room.save
	end
	
	def destroy_total_values
		self.consumer.total -= self.value
		self.boiler_room.total -= self.value
		self.consumer.save  && self.boiler_room.save
	end
end
