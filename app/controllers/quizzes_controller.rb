class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :edit, :update, :destroy]

  def index
    @quizzes = Quiz.all.order(id: 'ASC')
  end

  def show
    @question = Question.new
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.user_id = current_user.id

    if @quiz.save
      redirect_to quizzes_path
    else
      render :new
    end
  end

  def edit
    render :new
  end

  def update
    @quiz.update(quiz_params)
    redirect_to quizzes_path
  end

  def destroy
    @quiz.destroy
    redirect_to quizzes_path
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  def quiz_params
    params.require(:quiz).permit(:title)
  end
end
