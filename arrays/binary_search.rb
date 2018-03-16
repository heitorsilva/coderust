# frozen_string_literal: true

# Binary search is used to find the index
# of an element in a sorted array
class BinarySearch
  # Runtime Complexity: Logarithmic, O(logn)
  # Memory Complexity: Logarithmic, O(logn)
  #
  # Recursive solution has O(logn) memory complexity
  # as it will consume memory on the stack.
  def self.recursive(list, key, low, high)
    return -1 if low > high

    mid = low + ((high - low) / 2)

    return mid if list[mid] == key

    return recursive(list, key, low, mid - 1) if key < list[mid]

    recursive(list, key, mid + 1, high)
  end

  # Runtime Complexity: Logarithmic, O(logn)
  # Memory Complexity: Constant, O(1)
  #
  # Iterative solution has same O(logn) runtime complexity
  # but has better memory complexity.
  def self.iterative(list, key)
    low = 0
    high = list.length - 1

    while low <= high
      mid = low + ((high - low) / 2)

      return mid if list[mid] == key

      high = mid - 1 if key < list[mid]
      low = mid + 1 if key > list[mid]
    end

    -1
  end
end
