class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @questions = Question.where(user_id: current_user.id).reverse_order
  end

  private
    def user_params
      params.require(:user).permit(:name, :profile_image, :introduction, :email)
    end

end
