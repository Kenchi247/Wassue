class AnswersController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    answer = Answer.new(answer_params)
    answer.user_id = current_user.id
    user = User.find_by(id: current_user)
    answer.question_id = question.id
    answer.save
    AnswerScore.create(user_id:current_user.id, answer_id:answer.id, answer_score: 0)
    if question.user_id == answer.user_id
       question.update(question_status: "解決済")
       redirect_to question_path(question.id)
    else
      score = user.score += 2
      user.update(score: score)
      question.update(question_status: "受付中")
      redirect_to question_path(question.id)
    end
  end

  def update
    question = Question.find(params[:question_id])
    answer = Answer.find(params[:id])
    answer.update(answer_params)
    redirect_to question_path(question.id)
  end

  def bestanswer
    question = Question.find(params[:question_id])
    answer = Answer.find(params[:id])
    user = User.find_by(id:answer.user_id)
    answer.update(best_answer: true)
    question.update(question_status: "解決済")
    user = User.find_by(id:answer.user_id)
    score = user.score += 5
    user.update(score: score)
    redirect_to question_path(question.id)
  end

  private
    def answer_params
      params.require(:answer).permit(:user_id,  :question_id,  :answer_content, :best_answer, :best_answer)
    end
end
