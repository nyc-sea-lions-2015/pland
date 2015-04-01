class Events < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer  :event_type_id, null: false, index:true
      t.datetime :open_datetime, null: false
      t.datetime :end_datetime, null: false

      t.timestamps
    end
  end
end
