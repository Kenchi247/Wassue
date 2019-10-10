class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @questions = Question.where(user_id: @user.id).reverse_order
    @answers = Answer.where(user_id: @user.id).reverse_order
    @examples = Example.where(user_id: @user.id).reverse_order
  end

end
