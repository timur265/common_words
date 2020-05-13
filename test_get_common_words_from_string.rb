require 'test/unit'
require_relative 'get_common_words_from_string.rb'

class TestSimple < Test::Unit::TestCase
  def test_simple
    h = { 'Hello': 1, 'world': 1 }
    h1 = { 'Hello': 2, 'world': 1 }
    h2 = { 'Hello': 1, 'hello': 1, 'world': 1 }
    w = get_common_words_from_string('Hello world')
    w1 = get_common_words_from_string('Hello Hello world')
    w2 = get_common_words_from_string('Hello hello world')
    assert_equal h[:Hello], w['Hello']
    assert_equal h[:world], w['world']
    assert_equal h1[:Hello], w1['Hello']
    assert_equal h1[:world], w1['world']
    assert_equal h2[:Hello], w2['Hello']
    assert_equal h2[:world], w2['world']
    assert_equal h2[:hello], w2['hello']
  end
end
