class Question < ApplicationRecord
  belongs_to :user
  has_many :answers, dependent: :destroy

  has_many :question_scores, dependent: :destroy
  has_many :questoin_comments, dependent: :destroy

  is_impressionable

end
