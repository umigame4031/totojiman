class OrdersController < ApplicationController
  def index
    @contractor = User.new(contractor_id)
  end
end
