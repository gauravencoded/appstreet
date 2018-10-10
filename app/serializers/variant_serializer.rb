class VariantSerializer < ActiveModel::Serializer
  attributes :id,:sku, :price, :option_type, :product#,:name,:desc,:images,:price, :discounted_price
  has_many :option_values, through: :option_value_variants

  def product
    ProductSerializer.new(object.object.product, without_serializer: true)
  end
  def option_type
  	ActiveModel::Serializer::CollectionSerializer.new(object.object.product.option_types, serializer: OptionTypeSerializer)
  end
end
