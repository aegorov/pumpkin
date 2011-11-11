# encoding: UTF-8
class TransactionsController < ApplicationController
  # GET /transactions
  # GET /transactions.json
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
    puts "#{@transactions.size}"
    respond_to do |format|
      format.html # index.html.erb
      format.csv { render :csv => @transactions, :filename => "transactions" }
    end
  end

  # GET /transactions/search
  def search
    @search = Transaction.search(params[:search])
    @transactions = @search.all  
    respond_to do |format|
      format.html
      format.csv { render :csv => @transactions, :filename => "transactions" }
    end
  end
  
  # POST /transactions
  # POST /transactions.json
  def create
    @transaction = Transaction.new(params[:transaction])

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to transactions_path() }
        format.json { render json: @transaction, status: :created, location: @transaction }
      else
        format.html { render action: "new" }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /transactions/1
  def update
    @transaction = Transaction.find(params[:id])

    respond_to do |format|
      if @transaction.update_attributes(params[:transaction])
        format.html { redirect_to transactions_path() }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /transactions/1
  # DELETE /transactions/1.json
  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy

    respond_to do |format|
      format.html { redirect_to transactions_url }
      format.json { head :ok }
    end
  end
end
