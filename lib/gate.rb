class Gate
	STATIONS = [:umeda, :juso, :mikuni]
	FARES = [150, 190]

	def initialize(name)
		@name = name
	end

	def enter(ticket)
		ticket.stamp(@name)
		# stampメソッド 駅名を渡すと、その駅名がTicketクラスのインスタンスに保存される
	end

	def exit(ticket)
		fare = clac_fare(ticket)
		fare <= ticket.fare
	end

	def clac_fare(ticket)
		from = STATIONS.index(ticket.stamped_at)
		to = STATIONS.index(@name)
		# indexメソッド　配列の中から引数に合致する要素の添字を取得
		distance = to - from
		FARES[distance - 1]
		# ＜例＞乗車駅梅田、降車駅三国であれば、変数fromとtoの値はそれぞれ、0と2になり、distanceは2-0=2になる。
		# 配列FAREから値を取得する場合、distanceの値から１を引きます。よって、FARE[1]を取得
	end

end