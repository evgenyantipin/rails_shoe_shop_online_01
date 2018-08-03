class Employee::OrdersController < EmployeesController
  def index
    @orders = Order.sorted_order.page(params[:page])
                   .per Settings.per_page
  end

  def create
    user = current_user
    order = Order.find_by id: params[:order_id]
    Bill.create order: order, user: user
    order.update status: 1
    flash[:success] = t "add_success"
    redirect_to employee_orders_path
  end

  def edit
    @order = Order.find_by id: params[:id]
  end
end
