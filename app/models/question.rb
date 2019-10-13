class Question < ApplicationRecord
  belongs_to :user
  has_many :answers, dependent: :destroy

  has_many :question_scores, dependent: :destroy
  has_many :questoin_comments, dependent: :destroy

  is_impressionable

  def favorited_by?(user)
      question_scores.where(user_id: user.id).exists?
  end
end
