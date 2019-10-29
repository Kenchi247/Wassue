class QuestionsController < ApplicationController
  before_action :authenticate_user!, only: [:update, :edit, :create, :new]
  before_action :set_twitter_client, only: [:create]
  def new
    @question = Question.new
  end

  def index
    NotificationChannel.broadcast_to(current_user, title:'New things!',body:'All the news fit to print')
    @questions = Question.page(params[:page]).search(params[:search]).reverse_order
    @noanswers = Question.where(question_status: "未回答").page(params[:page]).reverse_order
    @unsolved = Question.where(question_status: "受付中").page(params[:page]).reverse_order
    @bestanswers = Question.where(question_status: "解決済").page(params[:page]).reverse_order
    @examples = Example.where(example_status: true).page(params[:page]).reverse_order
    @rank_user = User.where(admin: false).order('score DESC').limit(5)
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
    @question = Question.new(question_params)
    @question.user_id = current_user.id
    if @question.save
       @twitter.update("新しい質問があります!\n[#{@question.title}]\n   http://www.wassue.site/questions/#{@question.id}")
       redirect_to questions_path
    else
       render :new
    end
  end



  def update
      @question = Question.find(params[:id])
      if @question.update!(question_params)
        redirect_to question_path(@question.id)
      else
        render :edit
      end
  end

  def edit
    @question = Question.find(params[:id])
  end

  private
    def question_params
      params.require(:question).permit(:title, :question_status, :content )
    end

    def set_twitter_client
      @twitter = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV['TWITTER_API']
        config.consumer_secret     = ENV['TWITTER_API_SECRET']
        config.access_token        = ENV['TWITTER_KEY']
        config.access_token_secret = ENV['TWITTER_SECRET']
      end
    end

end
