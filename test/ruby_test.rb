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
	def test_ruby_install
		puts ""
		puts "test ruby install"
		s = %x(gem list)
		puts s
		b1 = s.include? "bundler"
		assert(b1,"bundler gem is not installed")
		b2 = s.include? "pry"
		assert(b2,"pry gem is not installed")
		b3 = s.include? "byebug"
		assert(b3,"byebug gem is not installed")
		b4 = s.include? "json"
		assert(b4,"json gem is not installed")
		b5 = s.include? "watir-webdriver"
		assert(b5,"watir-webdriver gem is not installed")
		b6 = s.include? "rails"
		assert(b6,"rails gem is not installed")
		
	end
end