class CommentsController < ApplicationController
  def create
    answer = Answer.find(params[:answer_id])
    comment = current_user.comments.new(comment_params)
    comment.answer_id = answer.id
    comment.save
    redirect_to question_path(answer.question_id)
  end
  private
  def comment_params
    params.require(:comment).permit(:user_id,:answer_id,:answer_comment)
  end
end
