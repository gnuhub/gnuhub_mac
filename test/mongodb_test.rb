require 'minitest/autorun'
class MongodbTest < MiniTest::Unit::TestCase
	def test_mongodb_install
		s = %x(mongod --version)
		b = s.include? "db version"
		assert(b,"mongodb is not installed")
	end
	def test_mongodb_ruby
		s = %x(gem list)
		b1 = s.include? "mongo"
		b2 = s.include? "bson ("
		b3 = s.include? "bson_ext"
		assert(b1,"gem mongo is not installed")
		assert(b2,"gem bson is not installed")
		assert(b3,"gem bson_ext is not installed")
	end 
end