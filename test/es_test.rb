require 'minitest/autorun'
class EsTest < MiniTest::Unit::TestCase
	def test_es_install
		puts ""
		puts "test es"
		s = %x(which elasticsearch)
		puts s
		b = s.include? "elasticsearch"
		assert(b,"elasticsearch is not installed")
	end
end