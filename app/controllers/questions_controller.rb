class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    question = Question.new(question_params)
    question.user_id = current_user.id
    if question.save!
       redirect_to questions_path
    else
      render :new
    end
  end



  def update
  end

  def edit
  end

  private
    def question_params
      params.require(:question).permit(:title, :question_status, :premise, :error, :try, :content, :note)
    end
end
