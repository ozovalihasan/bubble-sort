

def bubble_sort( arr )
  (arr.size - 1).times do | counter |
    p counter 
    p arr[ counter ] , arr[ counter + 1 ] 
    p '============'
    if arr[ counter ] > arr[ counter + 1 ]
      arr[ counter ] , arr[ counter + 1 ] =  arr[ counter +1 ] , arr[ counter ]
    end    

  end
  p arr
end

def bubble_sort_by()
  yield [ 2, 3 ] 
end

bubble_sort_by() do |left,right|
  left - right
end

bubble_sort([3,2,1,3,5,67])


