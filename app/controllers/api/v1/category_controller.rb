class Api::V1::CategoryController < ApplicationController
    before_action :set_category
    def show
    end
    private
        def set_category
            @category = Category.find(params[:id])
        end
end