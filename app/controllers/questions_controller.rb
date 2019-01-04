class QuestionsController < ApplicationController
    def index
        @questions=Question.all
        @category = Category.all
        @difficulty = Difficulty.all
    end
end
