# 正規表現
text = "私の誕生日は,1977年7月17日です。"
m = /(\d+)年(\d+)月(\d+)日/.match(text)
puts m[1] + "/" + m[2] + "/" + m[3]

# Rangeを使って取得
puts m[1..3]

# ２番目から２個取得
puts m[2, 2]

# マッチした部分全体を取得
puts m[0]

# 最後のキャプチャを取得
puts m[-1]