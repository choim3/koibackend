class ChangeOrderedMenuItem < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :menu_item_id
    add_column :orders, :is_ordered, :boolean
  end
end
