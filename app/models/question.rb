class Question < ApplicationRecord
  belongs_to :user
  has_many :answers, dependent: :destroy

  has_many :question_scores, dependent: :destroy
  has_many :question_comments, dependent: :destroy



  is_impressionable

  def self.search(search)
     return Question.all unless search
     Question.where(["title LIKE? OR content LIKE?", "%#{search}%","%#{search}%"])
  end

  validate :add_error_sample

def add_error_sample

  if title.blank? or title.length <= 10
    errors[:base] << "タイトルを必ず10文字以上入力してください"
  end


  if content.blank?
    errors[:base] << "質問の内容がありません"
  end
end

end
