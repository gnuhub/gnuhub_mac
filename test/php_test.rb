require 'minitest/autorun'
class PhpTest < MiniTest::Unit::TestCase
	def test_phpdoc_install
		s = %x(which phpdoc)
		b = s.include? "phpdoc"
		assert(b,"phpdoc is not installed")
	end
end