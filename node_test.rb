require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/node"

class NodeTest < MiniTest::Test

  def test_it_exists
    node = Node.new("Burke", nil)
    assert_instance_of Node, node
  end

  def test_it_has_a_surname
    node = Node.new("Burke", nil)
    assert_equal "Burke", node.surname
  end

  def test_it_has_a_next_node
    node = Node.new("Burke", nil)
    assert_nil node.next_node
  end

end
