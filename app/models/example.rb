class Example < ApplicationRecord
  belongs_to :user
  has_many :example_score, dependent: :destroy

  is_impressionable

end
