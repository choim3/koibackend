class CreateMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :desc
      t.float :price

      t.timestamps
    end
  end
end
