class User < ApplicationRecord
  has_many :orders
  has_many :ordered_items, through: :orders, source: :food_item
end
