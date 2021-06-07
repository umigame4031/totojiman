class OrdersController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @order = Order.new
  end

  def create
    @post = Post.find(params[:post_id])
    @order = Order.new(order_params)
    if @order.valid?
      Payjp.api_key = ENV["PAYJP_SECRET_KEY"] 
      Payjp::Charge.create(
        amount: @post.user.guide_fee , 
        card: order_params[:token],  
        currency: 'jpy' 
      )
      @order.save
      redirect_to root_path
    else
      render action: :index
    end
  end

  private

  def order_params
    params.require(:order).permit(:guide_hour).merge(client_id: current_user.id, contractor_id: @post.user.id, token: params[:token] )
  end
end
