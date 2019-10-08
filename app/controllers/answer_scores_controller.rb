class AnswerScoresController < ApplicationController
  def up
      question = Question.find(params[:question_id])
      answer = Answer.find(params[:id])
      answer_score = AnswerScore.find_by(user_id: current_user.id, answer_id: answer.id)
      if answer_score
         answer_score.delete
         redirect_to question_path(question.id)
      else
        score = AnswerScore.new(answer_id: answer.id)
        score.user_id = current_user.id
        score.answer_id = answer.id
        score.answer_score = 1
        score.save
        redirect_to question_path(question.id)
      end
  end

  def down
      question = Question.find(params[:question_id])
      answer = Answer.find(params[:id])
      answer_score = AnswerScore.find_by(user_id: current_user.id, answer_id: answer.id)
      if answer_score
         answer_score.delete
         redirect_to question_path(question.id)
      else
        score = AnswerScore.new(answer_id: answer.id)
        score.user_id = current_user.id
        score.answer_id = answer.id
        score.answer_score = -1
        score.save
        redirect_to question_path(question.id)
      end
  end
  private
    def answer_score_params
      params.require(:answer_score).permit(:user_id, :answer_id, :answer_score )
    end
end
