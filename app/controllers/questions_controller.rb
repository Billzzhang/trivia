class QuestionsController < ApplicationController
    def index
        @questions=Question.all
        @category = Category.all
        @difficulty = Difficulty.all
    end
    def show
        @question = Question.find(params[:id])
    end
    def play
        @category = Category.all
        @questions = Question.where(category_id: params[:category_id])
    end
    def category
        @category = Category.all
    end
end
