class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    answer = Answer.find(params[:answer_id])
    comment = current_user.comments.new(comment_params)
    comment.answer_id = answer.id
    if comment.save
       redirect_to question_path(answer.question_id)
    else
       redirect_to question_path(question.id), notice:"コメントが内容がありません"
    end

  end
  private
  def comment_params
    params.require(:comment).permit(:user_id,:answer_id,:answer_comment)
  end
end
