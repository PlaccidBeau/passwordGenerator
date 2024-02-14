require 'minitest/autorun'
# require '../app.rb'
require "../password"
require "../passwordCreate"

class TestPassword < Minitest::Test
  def test_password
    runPassword = Passwordcreate.new
    runPassword.run
  end
end
