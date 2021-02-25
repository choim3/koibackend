class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :desc, :price
  has_many :orders
  has_many :users through: :orders
end
