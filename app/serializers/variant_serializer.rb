class VariantSerializer < ActiveModel::Serializer
  attributes :id,:sku, :price#,:name,:desc,:images,:price, :discounted_price
  belongs_to :product
  has_many :option_values, through: :option_value_variants

  # def option_values
  # 	binding.pry
  #   # object.associates.order(created_at: "DESC")
  # end

end
