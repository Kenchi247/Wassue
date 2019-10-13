class ExampleScoresController < ApplicationController
  before_action :authenticate_user!
  before_action :set_example
  def create
    example = Example.find(params[:id])
    user = User.find_by(id: example.user_id)
    example_score = ExampleScore.new(example_id: example.id, user_id: current_user)
    example_score.save
    score = user.score += 3
    user.update(score: score)
    redirect_to example_path(example.id)
  end

  def destroy
    example = Example.find(params[:id])
    user = User.find_by(id: example.user_id)
    example_score = ExampleScore.find_by(example_id: example.id, user_id: current_user)
    example_score.destroy
    score = user.score -= 3
    user.update(score: score)
    redirect_to example_path(example.id)
  end
  private
  def set_example
    @example = Example.find(params[:id])
  end
end
