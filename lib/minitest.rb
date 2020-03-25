# minitest基本系（例）
require 'minitest/autorun'

class SampleTest < Minitest::Test
	def test_sample
		assert_equal 'RUBY', 'ruby' .upcase
	end
end

# Minitest::Testの部分は、SampleTestクラスがMinitest::Testクラスを継承することを表している。
# assert_equal 'RUBY', 'ruby' .upcaseは実行結果を確認するメソッド
# assert_equal　　　実行結果を確認するメソッド
# assert_equal　期待する結果, テスト対象となる値や式