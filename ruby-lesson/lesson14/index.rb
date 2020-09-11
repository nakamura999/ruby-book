require "./food"
require "./drink"

puts "日曜日限定100円引きセール実施中!"

food1 = Food.new("ピザ", 800, 700)
# food1.calorie = 700
food2 = Food.new("寿司", 1200, 600)
# food2.calorie = 600
drink1 = Drink.new("ビール", 450, 500)
# drink1.amount = 500
drink2 = Drink.new("ワイン", 500, 400)
# drink2.amount = 400

menus = [food1, food2, drink1, drink2]

index = 0

menus.each do |menu|
	puts "#{index}. #{menu.info}"
	index += 1
end

puts "--------------"
puts "メニューの番号を入力してください"
order = gets.chomp.to_i

selected_menu = menus[order]
puts "選択されたメニュー: #{selected_menu.name}"

puts "個数を入力してください(3つ以上で100円引き)"
count = gets.chomp.to_i

puts "お会計は#{selected_menu.total_price(count)}円です"


# food1.calorie = 700
# drink1.amount = 500
# puts food1.calorie
# puts drink1.amount
# puts food1.calorie_info


# puts food1.info
# puts drink1.info