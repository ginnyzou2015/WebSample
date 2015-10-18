class AddBeaconIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :beacon_id, :string
  end
end
