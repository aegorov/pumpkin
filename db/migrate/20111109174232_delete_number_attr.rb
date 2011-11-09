class DeleteNumberAttr < ActiveRecord::Migration
  def up
  	remove_column :boiler_rooms, :number
  	remove_column :consumers, :number
  end

  def down
  	add_column :boiler_rooms, :number, :integer
  	add_column :consumers, :number, :integer
  end
end
