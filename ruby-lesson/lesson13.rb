# クラス
class Menu
	# インスタンス変数
	attr_accessor :name
	attr_accessor :price

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

# インスタンスの生成
menu1 = Menu.new
menu1.name = "パスタ"
menu1.price = 850
# puts menu1.price
puts menu1.info
puts menu1.total_price(3)

# menu2 = Menu.new
# menu2.name = "寿司"
# puts menu2.name
# menu2.price = 1200