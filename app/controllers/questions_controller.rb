class QuestionsController < ApplicationController
  before_action :set_question, only: [:edit, :update, :destroy]

  def create
    @question = Question.new(question_params)
    @quiz = Quiz.find(params[:quiz_id])
    @question.quiz_id = @quiz.id
    @question.save

    redirect_to quiz_path(@quiz)
  end

  def edit
  end

  def update
  end

  def destroy
    @question.destroy

    redirect_to quiz_path(@question.quiz)
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:question)
  end
end
