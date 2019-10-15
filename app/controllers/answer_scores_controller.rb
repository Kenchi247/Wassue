class AnswerScoresController < ApplicationController
  before_action :authenticate_user!
  before_action :set_answer
  def up
      if @answer_score
         @answer_score.delete
         score = @user.score += 2
         @user.update(score: score)

      else
        score = AnswerScore.new(answer_id: @answer.id)
        score.user_id = current_user.id
        score.answer_id = @answer.id
        score.answer_score = 1
        score.save
        score = @user.score += 2
        @user.update(score: score)
      end
  end

  def down
      if @answer_score
         @answer_score.delete
         score = @user.score -= 2
         @user.update(score: score)
      else
        score = AnswerScore.new(answer_id: @answer.id)
        score.user_id = current_user.id
        score.answer_id = @answer.id
        score.answer_score = -1
        score.save
        score = @user.score -= 2
        @user.update(score: score)
      end
  end
  private
    def answer_score_params
      params.require(:answer_score).permit(:user_id, :answer_id, :answer_score )
    end

    def set_answer
      @question = Question.find(params[:question_id])
      @answer = Answer.find(params[:id])
      @user = User.find_by(id: @answer.user_id)
      @answer_score = AnswerScore.find_by(user_id: current_user.id, answer_id: @answer.id)
    end
end
