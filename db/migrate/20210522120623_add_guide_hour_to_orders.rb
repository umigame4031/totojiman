class AddGuideHourToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :guide_hour, :integer
  end
end
