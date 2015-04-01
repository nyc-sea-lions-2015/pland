class ChangeDesciptionToDescription < ActiveRecord::Migration
  def change
    rename_column :event_types, :desciption, :description
  end
end
