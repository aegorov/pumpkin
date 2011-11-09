class AddTotalAttrToBoillerRoom < ActiveRecord::Migration
  def change
  	add_column :boiler_rooms, :total, :integer
  end
end
