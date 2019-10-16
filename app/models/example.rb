class Example < ApplicationRecord
  belongs_to :user
  has_many :example_score, dependent: :destroy

  #validates :example_title, :example_content, :example_answer,  presence: true

  is_impressionable

  def add_error_sample

    if example_title.blank?
      errors[:base] << "タイトルを入力してください"
    end


    if example_content.blank?
      errors[:base] << "例題の内容がありません"
    end

    if example_answer.blank?
      errors[:base] << "例題の回答がありません"
    end
  end

end
