number = 48

if number % 3 == 0 && number % 5 == 0
	# 15で割り切れる
	puts "15の倍数"
elsif number % 5 == 0
	puts "5の倍数"
elsif number % 3 == 0
	puts "3の倍数"
end