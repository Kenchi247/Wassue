class ExampleScore < ApplicationRecord
  belongs_to :user
  belongs_to :example
  validates_uniqueness_of :example_id, scope: :user_id
end
