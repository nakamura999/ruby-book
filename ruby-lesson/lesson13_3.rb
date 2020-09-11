class Menu
	attr_accessor :name
	attr_accessor :price

	def initialize(name, price)
		self.name = name
		self.price = price
	end

	def info
		return "#{self.name} #{self.price}円"
	end

	def total_price(count)
		total_price = self.price * count
		if count >= 3
			total_price -= 100
		end
		return total_price
	end
end

menu1 = Menu.new("寿司", 1200)

puts menu1.info