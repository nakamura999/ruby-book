require "data"

birthday = Data.new(1993,11,26)

puts birthday

puts birthday.sunday?
# birthdayは日曜日か？ false

today = Data.today
puts today.sunday?
# 今日は日曜日か？