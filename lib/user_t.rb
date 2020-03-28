# Userクラスを定義する
class User
	attr_reader :first_name, :last_name, :age

	def initialize(first_name, last_name, age)
		@first_name = first_name
		@last_name = last_name
		@age = age
	end

    # 氏名を作成するメソッド
    def full_name
    	"#{first_name} #{last_name}"
    end
end

# ユーザーのデータを作成(ユーザーのオブジェクトを作成)
users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Pyton', 30)

# ユーザーのデータを表示
users.each do |user|
	puts "氏名: #{user.full_name}, 年齢: #{user.age}"
end


#=> 氏名: Alice Ruby, 年齢: 20
