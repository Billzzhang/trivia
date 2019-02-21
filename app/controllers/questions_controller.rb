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
        @questions = Question.where(:category_id => params[:category])
        '''
        @questions = Array.new
        for @id in params[:category] do
            @questions << Question.where(category_id: @id)
        end
        '''
        #@questions = Question.where(category_id: params[:category_id])
    end
    def category
        @category = Category.all
    end

end
