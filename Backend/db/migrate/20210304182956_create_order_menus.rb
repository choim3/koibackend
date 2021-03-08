class CreateOrderMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :order_menus do |t|
      t.references :order, null: false, foreign_key: true
      t.references :menu_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
