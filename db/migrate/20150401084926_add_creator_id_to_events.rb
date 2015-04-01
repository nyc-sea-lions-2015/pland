class AddCreatorIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :creator_id, :integer, null: false, index: true
  end
end
