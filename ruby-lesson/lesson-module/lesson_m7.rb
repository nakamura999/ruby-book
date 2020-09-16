module NameChanger
	def change_name
		@name = 'アリス'
	end
end

class User
	include NameChanger

	attr_reader :name

	def initialize(name)
		# initialize 初期化したい処理がある場合に実装
		@name = name
	end
end

user = User.new('田中')
puts user.name

user.change_name
puts user.name
