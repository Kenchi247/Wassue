class QuestionComment < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :question_comment,  presence: true
  
end
