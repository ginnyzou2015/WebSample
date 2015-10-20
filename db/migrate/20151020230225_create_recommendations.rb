class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :user
      t.string :beacon
      t.string :recommendation

      t.timestamps null: false
    end
  end
end
