class AddDefaultValueToTotalAttr < ActiveRecord::Migration
  def change
  	change_column :boiler_rooms, :total, :integer, :default => 0
  	change_column :consumers, :total, :integer, :default => 0
  end
end
