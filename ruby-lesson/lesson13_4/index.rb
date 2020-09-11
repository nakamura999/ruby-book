require "./menu"

menu1 = Menu.new("寿司", 1200)
menu2 = Menu.new("ピザ", 800)
menu3 = Menu.new("ビール", 450)
menu4 = Menu.new("ワイン", 500)

menus = [menu1, menu2, menu3, menu4]

index = 0

menus.each do |menu|
	puts "#{index}. #{menu.info}"
	index += 1
end

puts "---------------"
puts "メニューの番号を選択してください"

order = gets.chomp.to_i

selected_menu = menu[order]

puts "選択されたメニュー:#{selected_menu.name}"

puts "個数を入力してください(3つ以上で100円引き)"

count = gets.chomp.to_i

puts "お会計は#{selected_menu.get_total_price(count)}円です"