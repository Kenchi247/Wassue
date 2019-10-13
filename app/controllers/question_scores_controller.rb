class QuestionScoresController < ApplicationController
  before_action :authenticate_user!
  def create
      question = Question.find(params[:question_id])
      user = User.find_by(id: question.user_id)
      question_score = QuestionScore.new(question_id: question.id, user_id: current_user)
      question_score.save
      score = user.score += 1
      user.update(score: score)
      redirect_to question_path(question.id)
  end
  def destroy
      question = Question.find(params[:question_id])
      user = User.find_by(id: question.user_id)
      question_score = QuestionScore.find_by(question_id: question.id, user_id:current_user)
      question_score.destroy
      score = user.score -= 1
      user.update(score: score)
      redirect_to question_path(question.id)
  end
end
