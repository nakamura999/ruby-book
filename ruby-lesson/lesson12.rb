# メソッド
def introduce
	puts "Hello"
	puts "my name is tanaka"
	puts "age 30"
end

puts "_____introduce_____"
puts introduce

# ===================================

# 引数
def point(name)
	puts "こんにちは"
	puts "私は、#{name}です"
end

puts point("佐藤")

# ===================================

def print_info(item)
	puts "田中電気へようこそ"
	puts "今日は#{item}がセール中です!"
end

print_info("カメラ")

print_info("テレビ")

# ===================================

# 複数の引数
def comment(item, price)
	puts "田中電気へようこそ"
	puts "今日は、#{item}がセール中で#{price}円です！"
end

comment("カメラ", 12000)

# ===================================

# 戻り値
def discount(price)
	return price / 2
end

puts "ブルーレイレコーダーがセール中です!"

half_price = discount(24000)

puts "特別価格で#{half_price}円です"

# ===================================

# 戻り値２  ?真偽値
def shipping_free?(price)
	return price >= 5000
end

if shipping_free?(3000)
	puts "5000円以上のお買い上げなので、送料は頂きません"
else
	puts "追加で送料をいただきます"
end

# ===================================

# キーワード引数
def buy(item:, price:, count:)
	puts "#{item}を#{count}台のお買い上げです"
	puts "合計金額は#{price * count}円です"
end

buy(item: "テレビ", price: 20000, count: 1)

# ===================================


