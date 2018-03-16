# frozen_string_literal: true

class BinarySearch
  # Runtime Complexity: Logarithmic, O(logn)
  # Memory Complexity: Logarithmic, O(logn)
  def self.recursive(a, key, low, high)
    if low > high
      return -1
    end

    mid = low + ((high - low) / 2)
    if a[mid] == key
      return mid
    elsif key < a[mid]
      return self.recursive(a, key, low, mid - 1)
    else
      return self.recursive(a, key, mid + 1, high)
    end
  end

  # Runtime Complexity: Logarithmic, O(logn)
  # Memory Complexity: Constant, O(1)
  def self.iterative(a, key)
    low = 0
    high = a.length - 1

    while low <= high
      mid = low + ((high - low) / 2)

      if a[mid] == key
        return mid
      end

      if key < a[mid]
        high = mid - 1
      else
        low = mid + 1
      end
    end

    return -1
  end
end
