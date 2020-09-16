module Baseball
	class Second
		def initialize(player, uniform_number)
			@player = player
			@uniform_number = uniform_number
		end
	end
end

module Clock
	class Second
		def initialize(digits)
			@digits = digits
		end
	end
end

second = Baseball::Second.new('田中', 13)

second2 = Clock::Second.new(13)