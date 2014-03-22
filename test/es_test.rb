require 'minitest/autorun'
class EsTest < MiniTest::Unit::TestCase
	def test_es_install
		s = %x(which elasticsearch)
		b = s.include? "elasticsearch"
		assert(b,"elasticsearch is not installed")
	end
end