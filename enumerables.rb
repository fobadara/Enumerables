# frozen_string_literal: true

# Create all, any and filter enumerable methods
module MyEnumerable
  def all?(&block)
    each do |element|
      return false if element.nil? || !block.call(element)
    end
    true
  end
end
