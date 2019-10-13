class QuestionCommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    question = Question.find(params[:question_id])
    comment = QuestionComment.new(question_comment_params)
    comment.user_id = current_user.id
    comment.question_id = question.id
    comment.save
    redirect_to question_path(question.id)
  end
  private
  def question_comment_params
    params.require(:question_comment).permit(:user_id,:question_id,:question_comment)
  end
end
