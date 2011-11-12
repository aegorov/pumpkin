# encoding: UTF-8
class ConsumersController < ApplicationController
  
  respond_to :html

  def index
    @consumers = Consumer.all
  end
  
  def create
    @consumer = Consumer.new(params[:consumer])
    if @consumer.save
     redirect_to consumers_path()
    else
     render :action => :index
    end
  end

  def update
    @consumer = Consumer.find(params[:id])
    if @consumer.update_attributes(params[:consumer])
      redirect_to consumers_path()
    else  
      render :action => :index
    end
  end

  def destroy
    @consumer = Consumer.find(params[:id])
    @consumer.transactions.destroy_all
    if @consumer.destroy
      redirect_to consumers_path
    end
  end

end
