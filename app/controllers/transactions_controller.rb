# encoding: UTF-8
class TransactionsController < ApplicationController

  respond_to :html, :expect => :search

  def index
    if params[:status]
      case params[:status]
        when 'send'
          @transactions = Transaction.sending
        when 'finish'
          @transactions = Transaction.finish
        when 'use'
          @transactions = Transaction.use
        when 'received'
          @transactions = Transaction.received
        else
          @transactions = Transaction.all
      end
    else
      @transactions = Transaction.all
    end
  end

  def search
    @search = Transaction.search(params[:search])
    @transactions = @search.all  
    respond_to do |format|
      format.html
      format.csv { render :csv => @transactions, :filename => "transactions" }
    end
  end
  
  def create
    @transaction = Transaction.new(params[:transaction])
    if @transaction.save
      redirect_to transactions_path()
    else
      render :action => :index
    end
  end

  def update
    @transaction = Transaction.find(params[:id])
    if @transaction.update_attributes(params[:transaction])
      redirect_to transactions_path()
    else
      render :action => :index
    end
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    redirect_to transactions_path()
  end
end
