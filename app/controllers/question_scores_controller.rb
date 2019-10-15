class QuestionScoresController < ApplicationController
  before_action :authenticate_user!
  before_action :set_question
  def create
      question_score = QuestionScore.new(question_id: @question.id, user_id: current_user.id)
      question_score.save
      score = @user.score += 1
      @user.update(score: score)
  end
  def destroy
      question_score = QuestionScore.find_by(question_id: @question.id, user_id: current_user.id)
      question_score.destroy
      score = @user.score -= 1
      @user.update(score: score)
  end
  private
  def set_question
    @question = Question.find(params[:question_id])
    @user = User.find_by(id: @question.user_id)
  end
end
