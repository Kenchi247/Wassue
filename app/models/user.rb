class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

    def self.find_for_oauth(auth)
      user = User.where(uid: auth.uid, provider: auth.provider).first

        unless user
        user = User.create(
          uid:      auth.uid,
          name: auth.info.name,
          image: auth.info.image,
          provider: auth.provider,
          email:    User.dummy_email(auth),
          password: Devise.friendly_token[0, 20]
              )
        end
      user
    end


  attachment :profile_image

  has_many :questions, dependent: :destroy
  has_many :question_scores, dependent: :destroy
  has_many :question_comments, dependent: :destroy

  has_many :answers, dependent: :destroy
  has_many :answer_scores, dependent: :destroy

  has_many :examples, dependent: :destroy
  has_many :example_scores, dependent: :destroy

  has_many :comments, dependent: :destroy

  private

  def self.dummy_email(auth)
    "#{auth.uid}-#{auth.provider}@example.com"
  end
end
