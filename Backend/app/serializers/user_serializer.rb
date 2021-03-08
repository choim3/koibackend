class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :order_menus
  has_many :reviews

  def order_menus
    ActiveModel::SerializableResource.new(object.current_order_item,  each_serializer: OrderMenuSerializer)
  end
end
