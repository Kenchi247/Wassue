class ExamplesController < ApplicationController
  before_action :authenticate_user!, only: [:update, :edit, :create, :new]
  def new
    @example = Example.new
  end

  def show
    @example = Example.find(params[:id])
    impressionist(@example, nil, unique: [:session_hash])
    @score = ExampleScore.where(example_id: @example.id)
    @user = User.find_by(id: @example.user_id)
  end

  def create
    @example = Example.new(example_params)
    @example.user_id = current_user.id
    if @example.save
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end

  def edit
    @example = Example.find(params[:id])
  end

  def update
    example = Example.find(params[:id])
    if example.update(example_params)
      redirect_to example_path(example.id)
    else
      render :edit
    end
  end

  private
    def example_params
      params.require(:example).permit(:user_id, :example_title, :example_content, :example_answer, :example_status)
    end

end
