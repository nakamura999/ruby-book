class Menu
	attr_accessor :name
	attr_accessor :price

	def initialize
		self.name = "ピザ"
		self.price = 800
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

menu1 = Menu.new

puts menu1.info