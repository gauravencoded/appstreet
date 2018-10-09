class VariantSerializer < ActiveModel::Serializer
  attributes :id,:sku, :price
  belongs_to :product
end
