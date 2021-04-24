class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def show
  end

  def new
    @quiz = Quiz.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
