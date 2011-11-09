# encoding: UTF-8
class Consumer < ActiveRecord::Base
	has_many :transactions    
end
