module Api
    module V1
        class ReportsController < ApplicationController
            def daily_report
                orders = "select orders.id ,orders.order_date, customers.email as customer_email, orders.total as subtotal, group_concat(menus.name) as ordered_menu, orders.status
                 from orders 
                 join customers on customers.id = orders.customer_id 
                 join order_details on order_details.order_id = orders.id 
                 join menus on menus.id=order_details.menu_id 
                 where (orders.order_date = '#{params[:date]}')  
                 group by order_details.order_id"
                reports = ActiveRecord::Base.connection.execute(orders)

                render json: reports
            end

            def customer_report
                customer_orders = "select orders.id ,orders.order_date, orders.total as subtotal, group_concat(menus.name) as ordered_menu, orders.status
                from customers 
                join orders ON customers.id = orders.customer_id 
                join order_details on order_details.order_id = orders.id 
                join menus on menus.id=order_details.menu_id 
                where (customers.email = '#{params[:customer_email]}')  
                group by orders.id"

                reports = ActiveRecord::Base.connection.execute(customer_orders)

                render json: reports
            end
        end
    end
end