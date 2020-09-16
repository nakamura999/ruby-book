class Tempo
	include Comparable
	# 比較演算を可能にするモジュール

	attr_reader :bpm

	def initialize(bpm)
		@bpm = bpm
	end

	def <=>(other)
		if other.is_a?(Tempo)
			bpm <=> other.bpm
		else
			nil
		end
	end

	def inspect
		"#{bpm}bpm"
	end
end

t_120 = Tempo.new(120)
t_180 = Tempo.new(180)

puts t_120 > t_180
# false
puts t_120 <= t_180
# true
puts t_120 == t_180
# false

tempos = [Tempo.new(180), Tempo.new(60), Tempo.new(120)]
puts tempos.sort.inspect
# sort 昇順で並べ替え