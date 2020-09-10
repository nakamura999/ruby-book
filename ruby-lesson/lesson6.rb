# 真偽値
score = 80

puts score > 80
# false

puts score <= 80
# true

if score <= 80
	puts = "頑張りましょう"
end


# 比較演算子
score_a = 100

if score_a == 100
	puts "満点です"
end

if score_a != 100
	puts "満点ではありません"
end


# 条件分岐
score_b = 60

if score_b > 80
	puts "良くできました"
else
	puts "頑張りましょう"
end


# 条件分岐2
score_c = 73

if score > 80
	puts "良くできました"
elsif score_c > 60
	puts "まずまずです"
else
	puts "頑張りましょう"
end


# 条件分岐3
# && ==「かつ」  || == 「または」
score_d = 96

if score >= 95 && score <= 99
	puts "高得点です！次は満点を目指しましょう！"
end
