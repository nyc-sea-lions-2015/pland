class EventTypes < ActiveRecord::Migration
  def change
    create_table :event_types do |t|
      t.string   :desciption, null: false, unique: true, index:true

      t.timestamps
    end
  end
end
