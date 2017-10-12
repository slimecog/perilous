require "minitest/autorun"
require "minitest/pride"
require "./lib/node"
require "./lib/pj"

class LinkedListTest < MiniTest::Test

  def test_it_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_it_has_a_head_that_is_nil
    list = LinkedList.new
    assert_nil list.head
  end

  def test_head_is_appendable
    list = LinkedList.new
    list.append("West")
    assert_instance_of Node, list.head
    assert_equal "West", list.head.surname
  end

  def test_can_append_two
    list = LinkedList.new
    list.append("West")
    list.append("Swift")
    assert_instance_of Node, list.head
    assert_instance_of Node, list.head.next_node
    assert_equal "West", list.head.surname
    assert_equal "Swift", list.head.next_node.surname
  end

  def test_can_append_five
    list = LinkedList.new
    list.append("West")
    list.append("Swift")
    list.append("Johnson")
    list.append("Hulsbrink")
    list.append("Haun")
    assert_instance_of Node, list.head
    assert_instance_of Node, list.head.next_node
    assert_instance_of Node, list.head.next_node.next_node
    assert_instance_of Node, list.head.next_node.next_node.next_node
    assert_instance_of Node, list.head.next_node.next_node.next_node.next_node
    assert_equal "West", list.head.surname
    assert_equal "Swift", list.head.next_node.surname
    assert_equal "Johnson", list.head.next_node.next_node.surname
    assert_equal "Hulsbrink", list.head.next_node.next_node.next_node.surname
    assert_equal "Haun", list.head.next_node.next_node.next_node.next_node.surname
  end


  def test_head_is_prependable
    list = LinkedList.new
    list.prepend("Brooks")
    assert_instance_of Node, list.head
    assert_equal "Brooks", list.head.surname
  end

  def test_head_is_prependable_twice
    list = LinkedList.new
    list = LinkedList.new
    list.prepend("Brooks")
    list.prepend("Washington")
    assert_instance_of Node, list.head
    assert_instance_of Node, list.head.next_node
    assert_equal "Washington", list.head.surname
    assert_equal "Brooks", list.head.next_node.surname
  end

  def test_head_is_prependable_five_times
    list = LinkedList.new
    list = LinkedList.new
    list = LinkedList.new
    list = LinkedList.new
    list = LinkedList.new
    list.prepend("Brooks")
    list.prepend("Washington")
    list.prepend("Fitzpatrick")
    list.prepend("Hunt")
    list.prepend("Hair")
    assert_instance_of Node, list.head
    assert_instance_of Node, list.head.next_node
    assert_instance_of Node, list.head.next_node.next_node
    assert_instance_of Node, list.head.next_node.next_node.next_node
    assert_instance_of Node, list.head.next_node.next_node.next_node.next_node
    assert_equal "Hair", list.head.surname
    assert_equal "Hunt", list.head.next_node.surname
    assert_equal "Fitzpatrick", list.head.next_node.next_node.surname
    assert_equal "Washington", list.head.next_node.next_node.next_node.surname
    assert_equal "Brooks", list.head.next_node.next_node.next_node.next_node.surname
  end

  def test_things_can_be_inserted_lol
    list = LinkedList.new
    list.append("West")
    list.append("Burke")
    list.insert(1, "Lawson")
    assert_instance_of Node, list.head
    assert_instance_of Node, list.head.next_node
    assert_equal "Lawson", list.head.next_node.surname
  end

  def test_it_can_be_counted
    list = LinkedList.new
    list.append("West")
    assert_instance_of Node, list.head
    assert_equal 1, list.count
  end

  def test_it_can_be_put_to_string
    list = LinkedList.new
    list.append("West")
    assert_instance_of Node, list.head
    assert_equal "The West family", list.to_string
  end

  def test_two_can_be_strung
    list = LinkedList.new
    list.append("West")
    list.append("Swift")
    assert_instance_of Node, list.head
    assert_instance_of Node, list.head.next_node
    assert_equal "The West family, followed by the Swift family", list.to_string
  end

  def test_five_can_be_strung
    list = LinkedList.new
    list.append("West")
    list.append("Swift")
    list.append("Johnson")
    list.append("Hulsbrink")
    list.append("Haun")
    assert_instance_of Node, list.head
    assert_instance_of Node, list.head.next_node
    assert_instance_of Node, list.head.next_node.next_node
    assert_instance_of Node, list.head.next_node.next_node.next_node
    assert_instance_of Node, list.head.next_node.next_node.next_node.next_node
    assert_equal "The West family, followed by the Swift family, followed by the Johnson family, followed by the Hulsbrink family, followed by the Haun family", list.to_string
  end


#this .find method is not yet functional
#but this is how i planned on testing it

  # def test_it_can_find
  #   list = LinkedList.new
  #   list.append("West")
  #   list.append("Swift")
  #   list.append("Johnson")
  #   list.append("Hulsbrink")
  #   list.append("Haun")
  #   assert_instance_of Node, list.head
  #   assert_instance_of Node, list.head.next_node
  #   assert_instance_of Node, list.head.next_node.next_node
  #   assert_instance_of Node, list.head.next_node.next_node.next_node
  #   assert_instance_of Node, list.head.next_node.next_node.next_node.next_node
  #   assert_equal "The Swift family", list.find(2, 1)
  # end


end
