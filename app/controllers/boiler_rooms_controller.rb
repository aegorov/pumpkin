# encoding: UTF-8
class BoilerRoomsController < ApplicationController

  respond_to :html
  
  def index
    @boiler_rooms = BoilerRoom.all
  end
  
  def edit
    @boiler_room = BoilerRoom.find(params[:id])
  end

  def create
    @boiler_room = BoilerRoom.new(params[:boiler_room])
    if @boiler_room.save
      redirect_to boiler_rooms_path
    else
      render :action => :index 
    end
  end

  def update
    @boiler_room = BoilerRoom.find(params[:id])
    if @boiler_room.update_attributes(params[:boiler_room])
      redirect_to boiler_rooms_path
    end
  end

  def destroy
    @boiler_room = BoilerRoom.find(params[:id])
    @boiler_room.transactions.destroy_all
    if @boiler_room.destroy
      redirect_to boiler_rooms_path
    end
  end

end
