module Loggable
	def log(text)
		puts "[LOG] #{text}"
	end
	module_function :log
	# module_function ミックスイン＆得意メソッド　対象の定義よりも下で呼び出す
end

Loggable.log('Hello.')

class Product
	include Loggable

	def title
		log 'title is called.'
		'A great movie'
	end
end

product = Product.new
puts product.title

