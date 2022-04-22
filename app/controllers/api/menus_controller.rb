module Api
    module V1
        class MenusController < ApplicationController
            def index
                menus = Menu.all

                render json: MenuSerializer.new(menus, options).serialized_json
            end

            def show 
                menu = Menu.find_by(id: params[:id])

                render json: MenuSerializer.new(menu, options).serialized_json
            end

            def create 
                menu = Menu.new(menu_params)

                if menu.save
                    render json: MenuSerializer.new(menu, options).serialized_json
                else
                    render json: { error: menu.errors.messages }, status: 422
                end
            end

            def update
                menu = Menu.find_by(id: params[:id])

                if menu.update(menu_params)
                    render json: MenuSerializer.new(menu, options).serialized_json
                else
                    render json: { error: menu.errors.messages }, status: 422
                end
            end

            def destroy
                menu = Menu.find_by(id: params[:id])

                if menu.destroy
                    head :no_content
                else
                    render json: { errors: menu.errors.messages }, status: 422
                end
            end

            private

            def menu_params
                params.require(:menu).permit(:name, :price, :description)
            end

            def options
                @options ||= { include: %i[categories] }
            end
        end
    end
end