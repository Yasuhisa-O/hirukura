class Post < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many_attached :images

  validates :run_spot, :comment, :images, presence: true

  validates :mileage_id           , numericality: { other_than: 1 , message: "can't be blank"}
  validates :required_time_id     , numericality: { other_than: 1 , message: "can't be blank"}
  validates :achievement_level_id , numericality: { other_than: 1 , message: "can't be blank"}
  validates :prefecture_id        , numericality: { other_than: 1 , message: "can't be blank"}
  validates :recommendation_id    , numericality: { other_than: 1 , message: "can't be blank"}
  validates :scenic_beauty_id     , numericality: { other_than: 1 , message: "can't be blank"}
  validates :slope_difficulty_id  , numericality: { other_than: 1 , message: "can't be blank"}

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :mileage
  belongs_to :required_time
  belongs_to :achievement_level
  belongs_to :prefecture
  belongs_to :recommendation
  belongs_to :scenic_beauty
  belongs_to :slope_difficulty

  def self.looks(search1,search2)
    if search1 == "0" && search2 == "1"
      @Post = Post.all
    else
      @Post = Post.where("prefecture_id LIKE? or mileage_id LIKE?","%#{search1}%","%#{search2}%")
    end
  end

end
