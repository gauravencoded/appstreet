class VariantSerializer < ActiveModel::Serializer
  attributes :id,:sku, :price, :option_type#,:name,:desc,:images,:price, :discounted_price
  belongs_to :product
  has_many :option_values, through: :option_value_variants

  def option_type
  	ActiveModel::Serializer::CollectionSerializer.new(object.object.product.option_types, serializer: OptionTypeSerializer)
    # OptionTypeSerializer.new(object.object.product.option_types.last, without_serializer: true)
  end
end
