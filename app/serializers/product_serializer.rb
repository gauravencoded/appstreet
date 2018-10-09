class ProductSerializer < ActiveModel::Serializer
  attributes :id,:name,:desc,:images,:price, :discounted_price
end
