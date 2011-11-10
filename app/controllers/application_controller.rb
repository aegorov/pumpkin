# encoding: UTF-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :new_data

  def new_data
  	@transaction = Transaction.new
    @consumer = Consumer.new
    @boiler_room = BoilerRoom.new
  end
end
