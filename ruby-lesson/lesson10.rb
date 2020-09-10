# ハッシュ
user = {"name" => "田中", "age" => 30}

puts user
# {"name" => "田中", "age" => 30}

puts user["name"]
# 田中

user["name"] = "佐藤"

puts user["name"]
# 佐藤

user["height"] = 175
# キーheightを追加

puts user["height"]
# 175

puts user
# {"name" => "佐藤", "age" => 30, "height" => 175}

# シンボル「:」
# == puts user["name"]
puts user[:name]
# 佐藤

# =========================================

user_a {name: "渡辺", age: 36}
puts "#{user_a[:name]}: #{user_a[:age]}"

puts user_a[:height]
# nil 何も表示されない

if user_a[:height]
	puts "#{user_a[:name]}の身長は、#{user_a[:height]}です"
else
	puts "私の名前は、#{user_a[:name]}です"
end
# 私の名前は、渡辺です

# =========================================

users = [
	{name: "佐々木", age: 26}
	{name: "五十嵐", age: 35}
]

puts users[1]
# {:name => "五十嵐", :age => 35}

puts users[1][:name]
# 五十嵐

users.each do |user|
	puts "#{user[:name]}は、#{user[:age]}歳です"
end
# 佐々木は、26歳です　五十嵐は、35歳です



