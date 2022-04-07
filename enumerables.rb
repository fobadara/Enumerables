# Create all, any and filter enumerable methods
module MyEnumerable
  def all?(&block)
    each do |element|
      return false if element.nil? || !block.call(element)
    end
    true
  end

  def any?(&block)
    each do |element|
      next if element.nil?
      return true if block.call(element)
    end
    false
  end

  def filter(&block)
    result = []
    each do |element|
      result << element if element.is_a?(Numeric) && block.call(element)
    end
    result
  end
end
