require 'minitest/autorun'
class SshCopyIdTest < MiniTest::Unit::TestCase
	def test_ssh_copy_id_install
		s = %x(which ssh-copy-id)
		b = s.include? "ssh-copy-id"
		assert(b,"ssh-copy-id is not installed")
	end
end