module Api
    module V1
        class OrdersController < ApplicationController
            def index
                orders = Order.all

                render json: OrderSerializer.new(orders, options).serialized_json
            end

            def show
                order = Order.find_by(id: params[:id])

                render json: OrderSerializer.new(order, options).serialized_json
            end

            def create
                order = Order.new(customer_id: params[:customer_id], order_date: params[:order_date], status: "NEW")

                if order.save
                    params[:menu_orders].each do |menu_order|
                        menu = Menu.find_by(id: menu_order[:menu_id])
                        total_price = menu.price * menu_order[:qty]
                        order_detail = OrderDetail.new(order_id: order.id, menu_id: menu.id, qty: menu_order[:qty], subtotal: total_price)
                        order_detail.save
                    end
                    order_detail = OrderDetail.where(order_id: order.id)
                    total_order_price = order_detail.sum('subtotal')
                    order.update(total: total_order_price)

                    render json: OrderSerializer.new(order, options).serialized_json
                else
                    render json: { error: order.errors.messages }, status: 422
                end
            end

            def update
                order = Order.find_by(id: params[:id])

                if order.update(status: params[:status])
                    render json: OrderSerializer.new(order, options).serialized_json
                else
                    render json: { error: order.errors.messages }, status: 422
                end
            end

            private

            def order_params
                params.require(:order).permit(:customer_id, :order_date)
            end

            def options
                @options ||= { include: %i[order_details] }
            end
        end
    end
end