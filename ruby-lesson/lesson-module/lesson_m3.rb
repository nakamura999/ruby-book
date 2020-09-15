module DeepFreezable
	def deep_freeze(array_or_hash)
	end
end

class Team
	extend DeepFreezable
	# extend モジュール内のメソッドはクラスメソッドとしてミックスインする場合に使用。

	CONTRIES = deep_freeze(['Japan', 'US', 'India'])
end

class Bank
	extend DeepFreezable

	CURRENCIES = deep_freeze([Japan: 'yen', US: 'doller', India: 'rupee'])
end