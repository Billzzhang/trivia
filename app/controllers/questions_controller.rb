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
        @category = params[:category]
        @questions = Question.where(:category_id => params[:category])
    end
    def end
        @answers = Hash.new
        #@questions = Question.where(:category_id => @categories)
        @count = params[:count].keys.first.to_i
        params.each do |k,v|
            if k.starts_with? ("answer")
                @answers[k] = v
            end
        end
    end
    def category
        @category = Category.all
    end
<<<<<<< HEAD
=======

>>>>>>> a00b0871cf83f4b2e964315118b6f465c0c0e87a
end
