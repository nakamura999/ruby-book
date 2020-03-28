require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

# 梅田　　　十三　　　三国
# ¥150     ¥150
# ¥190

class GateTest < Minitest::Test
	# テストメソッドが実行される前に、このメソッドが毎回呼ばれる。
	def setup
		@umeda = Gate.new(:umeda)
		@juso = Gate.new(:juso)
		@mikuni = Gate.new(:mikuni)
    end

	# 150円の切符を購入
    # 梅田で入場し、十三で出場
    # 期待する結果　：出場できる
	def test_umeda_to_juso
		ticket = Ticket.new(150)
		@umeda.enter(ticket)
		assert @juso.exit(ticket)
    end

    # 150円の切符を購入
    # 梅田で入場し、三国で出場
    # 期待する結果　：出場できない
    def test_umeda_to_mikuni_when_fare_is_not_enough
    	ticket = Ticket.new(150)
    	@umeda.enter(ticket)
    	refute @mikuni.exit(ticket)
    end

    def test_umeda_to_mikuni_when_fare_is_enough
    	ticket = Ticket.new(190)
    	@umeda.enter(ticket)
    	assert @mikuni.exit(ticket)
    end

    def test_juso_to_mikuni
    	ticket = Ticket.new(190)
    	@juso.enter(ticket)
    	assert @mikuni.exit(ticket)
    end
end

