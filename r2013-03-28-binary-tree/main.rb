require 'pry'
require 'pry-debugger'

class Node
  attr_accessor :d, :p, :n

  def initialize(data)
    self.d = data
    self.p = self.n = nil
  end

  def to_s
    nxt = self.n.nil? ? "" : self.n.d
    prv = self.p.nil? ? "" : self.p.d
    "#{prv} <- #{self.d} -> #{nxt}"
  end
end

class Tree
  attr_accessor :root

  def insert(name)
    if self.root == nil
      self.root = Node.new(name)
    else
      insert_node(self.root, name)
    end
  end

  def insert_node(node, name)
    if (name < node.d) && (!node.p.nil?)
      insert_node(node.p, name)
    elsif (name > node.d) && (!node.n.nil?)
      insert_node(node.n, name)
    elsif (name < node.d) && (node.p.nil?)
      node.p = Node.new(name)
    elsif (name > node.d) && (node.n.nil?)
      node.n = Node.new(name)
    end
  end

  def find(name)
    compare(self.root, name)
  end

  def compare(node, name)
    if node.d == name
      node
    elsif (name > node.d && !node.n.nil?)
      compare(node.n, name)
    elsif (name < node.d && !node.p.nil?)
      compare(node.p, name)
    else
      puts "There is no node!"
    end
  end

  def find(name)
  end

  def delete(name)
  end

  def to_s
  end

end

t1 = Tree.new
t1.insert('mary')
t1.insert('kelly')
t1.insert('james')
t1.insert('lucy')

binding.pry