class Question < ApplicationRecord
  belongs_to :user
  has_many :answers, dependent: :destroy
  has_many :question_scores, dependent: :destroy

  def favorited_by?(user)
      question_score.where(user_id: user.id).exists?
  end
end
