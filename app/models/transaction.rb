class Transaction < ActiveRecord::Base
	belongs_to :boiler_room
	belongs_to :consumer
end
