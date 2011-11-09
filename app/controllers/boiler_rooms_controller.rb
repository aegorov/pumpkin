# encoding: UTF-8
class BoilerRoomsController < ApplicationController
  # GET /boiler_rooms
  # GET /boiler_rooms.json
  def index
    @boiler_rooms = BoilerRoom.all
    @boiler_room = BoilerRoom.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @boiler_rooms }
    end
  end

  # GET /boiler_rooms/1
  # GET /boiler_rooms/1.json
  def show
    @boiler_room = BoilerRoom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @boiler_room }
    end
  end

  # GET /boiler_rooms/new
  # GET /boiler_rooms/new.json
  def new
    @boiler_room = BoilerRoom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @boiler_room }
    end
  end

  # GET /boiler_rooms/1/edit
  def edit
    @boiler_room = BoilerRoom.find(params[:id])
  end

  # POST /boiler_rooms
  # POST /boiler_rooms.json
  def create
    @boiler_room = BoilerRoom.new(params[:boiler_room])

    respond_to do |format|
      if @boiler_room.save
        format.html { redirect_to boiler_rooms_path()}
      else
        format.html { render :action => "new" }
        format.json { render :json => @boiler_room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boiler_rooms/1
  # PUT /boiler_rooms/1.json
  def update
    @boiler_room = BoilerRoom.find(params[:id])

    respond_to do |format|
      if @boiler_room.update_attributes(params[:boiler_room])
        format.html { redirect_to boiler_rooms_path()}
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @boiler_room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boiler_rooms/1
  # DELETE /boiler_rooms/1.json
  def destroy
    @boiler_room = BoilerRoom.find(params[:id])
    @boiler_room.destroy

    respond_to do |format|
      format.html { redirect_to boiler_rooms_url }
      format.json { head :ok }
    end
  end
end
