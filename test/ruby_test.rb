require 'minitest/autorun'
class SshCopyIdTest < MiniTest::Unit::TestCase
	def test_ibm_db_install
		puts ""
		puts "test ibm_db gem"
		s = %x(gem list)
		puts s
		b = s.include? "ibm_db"
		assert(b,"ibm_db gem is not installed")
	end
end