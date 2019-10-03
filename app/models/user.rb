class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image

  has_many :questions, dependent: :destroy
  has_many :questions_scores, dependent: :destroy

  has_many :answers, dependent: :destroy
  has_many :answers_scores, dependent: :destroy

  has_many :examples, dependent: :destroy
  has_many :example_scores, dependent: :destroy

  has_many :comments, dependent: :destroy


end
