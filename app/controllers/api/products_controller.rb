class Api::ProductsController < ApplicationController
	def index
		json_response(Product.all)
	end

	def show
		# binding.pry
		@variant = Variant.where(id: params[:id]).last
		# @variant.includes(:product)
		json_response(@variant.product)
	end
end
