require 'minitest/autorun'
class RubyTest < MiniTest::Unit::TestCase
	def test_mongodb_install
		puts ""
		puts "test mongodb"
		s = %x(mongod --version)
		puts s
		b = s.include? "db version"
		assert(b,"mongodb is not installed")
	end
end