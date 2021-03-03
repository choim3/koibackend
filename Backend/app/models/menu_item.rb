class MenuItem < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders
  has_many :reviews
  has_many :users, through: :reviews
end
