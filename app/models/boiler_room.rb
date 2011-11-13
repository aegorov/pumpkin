# encoding: UTF-8
class BoilerRoom < ActiveRecord::Base
	has_many :transactions
	default_scope :order => 'created_at DESC'

	validates :name, :presence => :true
	
end
