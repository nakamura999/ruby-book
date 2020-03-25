# 10進数から16進数へ
# 例１
# def to_hex(r, g, b)
# 	' #' +
# 	   r.to_s(16).rjust(2, '0') +
# 	   g.to_s(16).rjust(2, '0') +
# 	   b.to_s(16).rjust(2, '0')
# end

# 0.to_s(16).rjust(2, '0')   #=>   '00'

# 例2
# def to_hex(r, g, b)
# 	hex = ' #'
# 	[r, g, b].each do |n|
# 		hex += n.to_s(16).rjust(2, '0')
# 	end
# 	hex
# end

def to_hex(r, g, b)
	[r, g, b].inject(' #') do |hex, n|
		hex + n.to_s(16).rjust(2, '0')
    end
end

# injectメソッドを使ってto_hexメソッドをリファクタリングする
# 最初の繰り返しではhexに' #'が入る
# ブロックの中のhex + n.to_s(16).rjust(2, '0')で作成された文字列は、次の繰り返し処理のhexに入る
# 繰り返し処理が最後まで終わったら、ブロックの戻り値がinjectメソッド自身の戻り値になる


# ↓ 16進数から10進数

# def to_ints(hex)
# 	r = hex[1..2]
# 	g = hex[3..4]
# 	b = hex[5..6]
#     ints = []
#     [r, g, b].each do |s|
#     	ints << s.hex
#     end
#     ints
# end

# def to_ints(hex)
# 	r = hex[1..2]
# 	g = hex[3..4]
# 	b = hex[5..6]
# 	[r, g, b].map do |s|
# 		s.hex
#     end
# end

# def to_ints(hex)
# 	r, g, b = hex[1..2], hex[3..4], hex[5..6]
# 	[r, g, b].map do |s|
# 		s.hex
# 	end
# end

# def to_ints(hex)
# 	hex.scan(/\w\w/).map do |s|
# 		s.scan
# 	end
# end

def to_ints(hex)
	hex.scan(/\w\w/).map(&:hex)
end

