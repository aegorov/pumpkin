class CreateBoilerRooms < ActiveRecord::Migration
  def change
    create_table :boiler_rooms do |t|
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end
