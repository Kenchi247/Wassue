class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_many :answer_scores, dependent: :destroy
  has_many :comments, dependent: :destroy

  def favorited_by?(user)
      answer_scores.where(user_id: user.id).exists?
  end
end
