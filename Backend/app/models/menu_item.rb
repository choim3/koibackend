class MenuItem < ApplicationRecord
  has_many :order_menus
  has_many :orders, through: :order_menus
  has_many :reviews
  has_many :users, through: :reviews
end
