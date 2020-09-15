module Loggable
	def log(text)
		puts "[LOG] #{text}"
	end
end

class Product
	include Loggable

	def title
		log 'title is called.'
		'A great movie'
	end

	def create_products(names)
		log 'create_products is called.'
	end
end

class User
	include Loggable

	def name
		log 'name is called'
		'Alice'
	end
end

puts '===Product==='

product = Product.new
product.title
product.create_products([])
product.log('Hello')

puts '===User==='

user = User.new
user.name