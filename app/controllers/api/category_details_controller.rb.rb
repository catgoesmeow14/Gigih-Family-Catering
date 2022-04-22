module Api
    module V1
        class CategoryDetailController < ApplicationController
            def create 
                category_detail = CategoryDetail.new(menu_category_params)

                if category_detail.save
                    render json: CategoryDetailSerializer.new(category_detail).serialized_json
                else
                    render json: { error: category_detail.errors.messages }, status: 422
                end
            end

            def update
                category_detail = CategoryDetail.find_by(id: params[:id])

                if category_detail.update(category_detail_params)
                    render json: CategoryDetailSerializer.new(category_detail).serialized_json
                else
                    render json: { error: category_detail.errors.messages }, status: 422
                end
            end

            def destroy
                category_detail = CategoryDetail.find_by(id: params[:id])

                if category_detail.destroy
                    head :no_content
                else
                    render json: { errors: category_detail.errors.messages }, status: 422
                end
            end

            private

            def category_detail_params
                params.require(:category_details).permit(:menu_id, :category_id)
            end
        end
    end
end