# frozen_string_literal: true

require_relative('node')

# Ruby class model for linked list data structure
class LinkedList
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    node = Node.new
    node.value = value
    node.next_node = nil
    @tail.next_node = node if @tail
    @tail = node
    @head ||= @tail
    @size += 1
  end

  def prepend(value)
    node = Node.new
    node.value = value
    node.next_node = @head
    @head = node
    @tail ||= @head
    @size += 1
  end

  def at(index)
    node = @head
    index.times do
      return if node.nil?

      node = node.next_node
    end
    node
  end

  def pop
    return_node = @tail
    if @head == @tail
      @head = nil
      @tail = nil
    else
      node = @head
      node = node.next_node while node.next_node != @tail
      node.next_node = nil
      @tail = node
    end
    @size -= 1
    return_node
  end

  def contains?(value)
    node = @head
    node = node.next_node while node.value != value && !node.next_node.nil?
    node.value == value
  end

  def find(value)
    index = 0
    node = @head
    while node.value != value && !node.next_node.nil?
      index += 1
      node = node.next_node
    end
    node.value == value ? index : nil
  end

  attr_reader :size, :tail, :head
end

linked_list = LinkedList.new
linked_list.prepend(23)
linked_list.prepend(24)
linked_list.append(30)
linked_list.append(100)

p linked_list.find(23)
