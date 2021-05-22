class AddGuideFeeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :guide_fee, :integer
  end
end
