class OrdersController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
  end

  def create
    @order = Order.new(order_params)
  end

  private

  def order_params
    params.require(:order).permit(:hour).merge(client_id: current_user.id, contractor_id: @post.user.id )
  end
end
