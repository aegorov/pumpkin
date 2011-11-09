class AddTotalAttrToConsumer < ActiveRecord::Migration
  def change
  	add_column :consumers, :total, :integer
  end
end
