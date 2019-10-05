class QuestionScoresController < ApplicationController
  def create
      question = Question.find(params[:question_id])
      question_score = QuestionScore.new(question_id: question.id)
      question_score.user_id = current_user.id
      question_score.save
      redirect_to question_path(question.id)
  end
  def destroy
      question = Question.find(params[:question_id])
      question_score = QuestionScore.find_by(question_id: question.id)
      question_score.user_id = current_user.id
      question_score.destroy
      redirect_to question_path(question.id)
  end
end
