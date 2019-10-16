class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :answer

  validates :answer_comment,  presence: true
end
