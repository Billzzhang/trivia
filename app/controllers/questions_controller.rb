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
        @questions=Question.all
        @category = Category.all
        @difficulty = Difficulty.all
    end
end
