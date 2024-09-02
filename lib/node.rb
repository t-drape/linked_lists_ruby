# frozen_string_literal: true

# A Ruby class model of a node for the implementation of a linked list
class Node
  attr_accessor :value, :next_node

  def initialize
    @value = nil
    @next_node = nil
  end
end
