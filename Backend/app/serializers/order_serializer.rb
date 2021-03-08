class OrderSerializer < ActiveModel::Serializer
  attributes :id, :order_number, :is_ordered
  has_one :user
end
