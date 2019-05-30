class Api::V1::CategoryController < ApiController
    before_action :set_category
    def show
        #render json: @category
    end
    private
        def set_category
            @category = Category.find(params[:id])
        end
end