require 'minitest/autorun'
require 'speak'

class SpeakTest < Minitest::Test
  """
  def test_helloworld
    assert_equal "Hello World!",
      Speak.helloworld()
  end
  
  def test_goodbyeworld
    assert_equal "Goodbye World!",
      Speak.goodbyeworld()
  end
  """
end
