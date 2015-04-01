class AddDescriptionToEvent < ActiveRecord::Migration
  def change
    add_column :events, :description, :string, null: false, index: true
  end
end
