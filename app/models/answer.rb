class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_many :answer_scores, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :answer_content,  presence: true

end
