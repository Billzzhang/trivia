class Api::V1::DifficultyController < ApiController
    before_action :set_difficulty
    def show
        #render json: @difficulty
    end
    private
        def set_difficulty
            @difficulty = Difficulty.find(params[:id])
        end
end