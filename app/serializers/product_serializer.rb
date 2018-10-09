class ProductSerializer < ActiveModel::Serializer
  attributes :id,:name,:desc,:images,:price, :discounted_price
  has_many :option_types
  # has_many :variants
  # has_one :master, class_name: "Variant"
  # attributes :id,:name,:desc,:images,:price, :discounted_price
  # link(:self) { api_products_url(object) }
end
