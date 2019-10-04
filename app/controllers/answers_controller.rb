class AnswersController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    answer = current_user.answers.new(answer_params)
    answer.question_id = question.id
    answer.save
    redirect_to question_path(question.id)
  end
  
  private
    def anwer_params
      params.require(:answer).permit(:user_id,  :question_id,  :answer_content)
    end
end
