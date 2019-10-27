class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @questions = Question.where(user_id: @user.id).page(params[:page]).reverse_order
    @answers = Answer.where(user_id: @user.id).page(params[:page]).reverse_order
    @examples = Example.where(user_id: @user.id).page(params[:page]).reverse_order
  end

end
