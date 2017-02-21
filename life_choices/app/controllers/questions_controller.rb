class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.chose_one = 0
    @question.chose_two = 0
    if @question.save
      respond_to do |format|
        format.html { redirect_to questions_path }
        format.js
      end
    end
  end

  def vote_one
    @question = Question.find(params[:id])
    @question.chose_one += 1
    if @question.save
      respond_to do |format|
        format.html { redirect_to questions_path }
        format.js
      end
    end
  end

  def vote_two
    @question = Question.find(params[:id])
    @question.chose_two += 1
    if @question.save
      respond_to do |format|
        format.html { redirect_to questions_path }
        format.js
      end
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
  end

private
  def question_params
    params.require(:question).permit(:option_one, :option_two)

  end
end
