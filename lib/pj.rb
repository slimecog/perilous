class LinkedList
  attr_reader :head

  def initialize
    @head = head
  end

  def place
    @place
  end

  def next_node
    @next_node
  end

  def count
    current = @head
    @head.nil?
    count = 0
    until current.nil?
      current = current.next_node
      count += 1
    end
    count
  end

  def insert(place, surname)
    current = @head
    (place - 1).times do
      current = current.next_node
    end
    new_node = Node.new(surname)
    new_node.next_node = current.next_node
    current.next_node = new_node
  end

  def append(surname)
    current = @head
    if @head.nil?
    @head = Node.new(surname)
    else
      until current.next_node.nil?
        current = current.next_node
      end
      current.next_node = Node.new(surname)
    end
  end

  def prepend(surname)
    if @head.nil?
      @head = Node.new(surname)
    else
      present = @head
      @head = Node.new(surname)
      @head.next_node = present
    end
  end

  def to_string
    current = @head
    group = "The #{current.surname} family"
    while current.next_node != nil
      current = current.next_node
      group << ", followed by the #{current.surname} family"
    end
    group
  end

#my .find and .include methods aren't working
#but i included them to show my line of thought
#.find is almost there, though.
#i just haven't gotten to the point where it'll
#list more than one family at once!

  def find(place, number)
    current = @head
    (place - 1).times do
      current = current.next_node
    end
      string = "The #{current.surname} family"
    end
  string
  end
  #
# def includes(surname)
#   current = @head
#   group = "The #{current.surname} family"
#   while current.next_node != nil
#     current = current.next_node
#     group << ", followed by the #{current.surname} family"
#   end
#   group.surname.include?
# end
end



list = LinkedList.new
