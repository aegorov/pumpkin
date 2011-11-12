# encoding: UTF-8
class Consumer < ActiveRecord::Base
	has_many :transactions    
	default_scope :order => 'created_at DESC'
end
