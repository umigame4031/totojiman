class OrdersController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @order = Order.new
  end

  def create
    @post = Post.find(params[:post_id])
    @order = Order.new(order_params)
    if @order.save
      redirect_to root_path
    else
      render action: :index
    end
  end

  private

  def order_params
    params.require(:order).permit(:guide_hour).merge(client_id: current_user.id, contractor_id: @post.user.id )
  end
end
