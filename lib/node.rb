# frozen_string_literal: true

# A Ruby class model of a node for the implementation of a linked list
class Node
  attr_accessor :value, :next

  def initialize
    @value = nil
    @next = nil
  end
end
