class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :class
      t.string :days
      t.time :start_time
      t.time :end_time
      t.string :building
      t.string :room
      t.string :request_type

      t.timestamps null: false
    end
  end
end
