class QuestionsController < ApplicationController


  def new
    @question = Question.new
  end

  def index
    @questions = Question.page(params[:page]).reverse_order
    @noanswers = Question.where(question_status: "未回答").page(params[:page]).reverse_order
    @unsolved = Question.where(question_status: "受付中").page(params[:page]).reverse_order
    @bestanswers = Question.where(question_status: "解決済").page(params[:page]).reverse_order
    @examples = Example.where(example_status: true).page(params[:page]).reverse_order
  end

  def show
    @question = Question.find(params[:id])
    @user = User.find_by(id: @question.user_id)
    @score = QuestionScore.where(question_id: @question.id)
    @answers = Answer.where(question_id: @question.id)
    impressionist(@question, nil, unique: [:session_hash])
    @answer = Answer.new
    @comment = Comment.new
    @question_comment = QuestionComment.new
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
      question = Question.find(params[:id])
      if question.update!(question_params)
        redirect_to question_path(question.id)
      else
        render :edit
      end
  end

  def edit
    @question = Question.find(params[:id])
  end

  private
    def question_params
      params.require(:question).permit(:title, :question_status, :content)
    end

end
