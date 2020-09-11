require "./menu"

class Food < Menu
	attr_accessor :calorie

	def initialize(name, price, calorie)
		super(name, price)
		# 親クラスと同名のメソッドを呼び出す super
		# self.name = name
		# self.price = price
		self.calorie = calorie
	end

	def info
		return "#{self.name} #{self.price}円 (#{self.calorie}kcal)"
	end

	def calorie_info
		"#{self.name}は、#{self.calorie}kcalです"
	end
end