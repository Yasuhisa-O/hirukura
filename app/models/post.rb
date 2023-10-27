class Post < ApplicationRecord

  belongs_to :user

  validates :run_spot, :required_time, :text, presence: true

  validates :achievement_level_id , numericality: { other_than: 1 , message: "can't be blank"}
  validates :prefecture_id       , numericality: { other_than: 1 , message: "can't be blank"}
  validates :recommendation_id    , numericality: { other_than: 1 , message: "can't be blank"}
  validates :scenic_beauty_id     , numericality: { other_than: 1 , message: "can't be blank"}
  validates :slope_difficulty_id  , numericality: { other_than: 1 , message: "can't be blank"}

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :achievement_level
  belongs_to :prefecture
  belongs_to :recommendation
  belongs_to :scenic_beauty
  belongs_to :slope_difficulty
end
