# encoding: UTF-8
class Transaction < ActiveRecord::Base

	belongs_to :boiler_room
	belongs_to :consumer

	default_scope :order => 'created_at DESC'

	#validates :value, presence: { :on => :create }

	after_create :add_total_values
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
	#CSV support
  comma do
  	boiler_room :name => "Котельная"
  	consumer :name  => "Потребитель"
  	value "Размер поставки"
  	title "Комментарий"
    created_at "Created at"
  end

end
