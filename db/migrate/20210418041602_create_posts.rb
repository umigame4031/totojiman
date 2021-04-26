class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string  :title,   null: false
      t.date    :date,    null: false
      t.integer :area_id, null: false
      t.string  :field,   null: false
      t.integer :genre,   null: false
      t.string  :fish,    null: false
      t.string  :tackle,  null: false
      t.text    :text,    null: false
      t.timestamps
    end
  end
end
