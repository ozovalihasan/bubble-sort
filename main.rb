def bubble_sort(arr)
  loop do
    changed = false
    (arr.size - 1).times do |counter|
      if arr[counter] > arr[counter + 1]
        arr[counter], arr[counter + 1] = arr[counter + 1], arr[counter]
        changed = true
      end
    end
    break unless changed
  end
end

def bubble_sort_by(arr1)
  loop do
    changed = false
    (arr1.length - 1).times do |counter|
      if (yield [arr1[counter], arr1[counter + 1]]).positive?
        arr1[counter], arr1[counter + 1] = arr1[counter + 1], arr1[counter]
        changed = true
      end
    end
    break unless changed
  end
end

bubble_sort_by(%w[hallo salut hi hello hey merhaba]) do |left, right|
  left.length - right.length
end

bubble_sort([2, 1, 1, 3, 5, 67])
