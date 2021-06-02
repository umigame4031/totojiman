class OrdersController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @order = Order.new
  end

  def create
    @post = Post.find(params[:post_id])
    @order = Order.new(order_params)
    if @order.valid?
      Payjp.api_key = ""  # 自身のPAY.JPテスト秘密鍵を記述しましょう
      Payjp::Charge.create(
        amount: ,  # 商品の値段
        card: order_params[:token],    # カードトークン
        currency: 'jpy'                 # 通貨の種類（日本円）
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
