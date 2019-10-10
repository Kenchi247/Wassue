class ExamplesController < ApplicationController
  def new
    @example = Example.new
  end

  def show
    @example = Example.find(params[:id])
    impressionist(@example, nil, unique: [:session_hash])
  end

  def create
    example = Example.new(example_params)
    example.user_id = current_user.id
    example.save
    redirect_to user_path(current_user.id)
  end

  def edit
  end

  def update
  end

  def destory
  end

  private
    def example_params
      params.require(:example).permit(:user_id, :example_title, :example_content, :example_answer, :example_status)
    end

end
