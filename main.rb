# frozen_string_literal: true

require_relative './enumerables'
# Use MyEnumerable module on initialized variable
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list.flatten
  end

  def each(&block)
    @list.each(&block)
    self
  end
end

list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e < 5 })
puts(list.any? { |e| e > 5 })
print(list.filter(&:even?))
