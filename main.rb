def bubble_sort(arr)
  counter2 = 0
  loop do 
    changed = false
    (arr.size - 1 - counter2).times do |counter|
      if arr[counter] > arr[counter + 1]
        arr[counter], arr[counter + 1] = arr[counter + 1], arr[counter]
        changed = true
      end
    end
    break unless changed
    counter2 += 1
    break if counter2 > arr.size - 2     
  end
  arr
end

def bubble_sort_by(arr1)
  counter2 = 0
  loop do 
    changed = false
    (arr1.length - 1 - counter2 ).times do |counter|
      if (yield [arr1[counter], arr1[counter + 1]]).positive?
        arr1[counter], arr1[counter + 1] = arr1[counter + 1], arr1[counter]
        changed = true
      end
    end
    break unless changed
    counter2 += 1
    break if counter2 > arr1.size - 2
  end
  arr1
end

result = bubble_sort_by(%w[hallo salut hi hello hey merhaba]) do |left, right|
  left.length - right.length
end

p result

p bubble_sort([ 67, 30,3 ,2,1])
