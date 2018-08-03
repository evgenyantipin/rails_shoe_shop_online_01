class Employee::OrdersController < EmployeesController
  def index
    @orders = Order.order(created_at: :desc).page(params[:page])
                   .per Settings.per_page
  end

  def edit
    @order = Order.find_by id: params[:id]
  end
end
