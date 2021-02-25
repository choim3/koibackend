class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :password
  has_many :orders
  has_many :ordered_items, through: :orders, source: :food_item
end
