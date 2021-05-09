class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :client, foreign_key: { to_table: :users }
      t.references :contractor, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
