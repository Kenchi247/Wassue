class ExampleScoresController < ApplicationController
  before_action :authenticate_user!
  before_action :set_example
  def create
    example_score = ExampleScore.new(example_id: @example.id, user_id: current_user.id)
    example_score.save
    score = @user.score += 3
    @user.update(score: score)
  end

  def destroy
    example_score = ExampleScore.find_by(example_id: @example.id, user_id: current_user.id)
    example_score.destroy
    score = @user.score -= 3
    @user.update(score: score)
  end
  private
  def set_example
    @example = Example.find(params[:example_id])
    @user = User.find_by(id: @example.user_id)
  end
end
