require 'spec_helper'

describe Transaction do

  before(:each) do
    @attr = { 
      :title => "test transaction",
      :value => 304
    }
    @transaction = Factory(:transaction)
  end

  it "should have attribute 'value'" do
    Transaction.new.should_not be_valid
  end

=begin
  it "should create a  new transaction given a valid attribute" do
    Transaction.create!(@attr)
  end
=end

end
