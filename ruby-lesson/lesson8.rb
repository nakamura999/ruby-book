# 配列
languages = ["日本語", "英語", "スペイン語"]

puts languages

puts languages[1]

puts "#{languages[0]}を話せます！"


# each文
languages.each do |language|
	puts "#{language}を話せます"
end