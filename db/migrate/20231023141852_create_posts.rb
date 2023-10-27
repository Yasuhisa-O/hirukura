class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|

      t.string   :mileage,                null: false
      t.string   :run_spot,               null: false
      t.string   :required_time,          null: false
      t.text     :text,                   null: false
      t.integer  :prefecture_id,          null: false
      t.integer  :achievement_level_id,   null: false
      t.integer  :recommendation_id,      null: false
      t.integer  :scenic_beauty_id,       null: false
      t.integer  :slope_difficulty_id,    null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
