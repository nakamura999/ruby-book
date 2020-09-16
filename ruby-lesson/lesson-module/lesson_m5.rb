module Taggale
	def price_tag
		"#{price}円"
	end
end

class Product
	include Taggale

	def price
		10000
	end
end

product = Product.new
puts product.price_tag
# 10000円