class Example < ApplicationRecord
  belongs_to :user
  has_many :example_score, dependent: :destroy

  def favorited_by?(user)
      example_score.where(user_id: user.id).exists?
  end
end
