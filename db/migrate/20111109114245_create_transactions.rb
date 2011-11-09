class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :boiler_room_id
      t.integer :consumer_id
      t.integer :value
      t.string :title
      t.timestamps
    end
  end
end
