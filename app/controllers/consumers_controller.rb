class ConsumersController < ApplicationController
  # GET /consumers
  # GET /consumers.json
  def index
    @consumers = Consumer.all
    @consumer = Consumer.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @consumers }
    end
  end
  
  # POST /consumers
  # POST /consumers.json
  def create
    @consumer = Consumer.new(params[:consumer])

    respond_to do |format|
      if @consumer.save
        format.html { redirect_to consumers_path() }
        format.json { render :json => @consumer, :status => :created, :location => @consumer }
      else
        format.html { render :action => "new" }
        format.json { render :json => @consumer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /consumers/1
  # PUT /consumers/1.json
  def update
    @consumer = Consumer.find(params[:id])

    respond_to do |format|
      if @consumer.update_attributes(params[:consumer])
        format.html { redirect_to consumers_path() }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @consumer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /consumers/1
  # DELETE /consumers/1.json
  def destroy
    @consumer = Consumer.find(params[:id])
    @consumer.destroy

    respond_to do |format|
      format.html { redirect_to consumers_url }
      format.json { head :ok }
    end
  end
end
