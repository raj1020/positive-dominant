def positive_dominant(arr)
    #Your code here
    i=0
    while i<arr.count
       if (arr[i].is_a?(Integer) || arr[i].is_a?(Float))== true
            
            i+=1
       else
        arr.delete_at(i)
       end
    
    end
    return arr
end

 #positive_dominant([5, 99, -3, -8, 832, -3, -8])
#p positive_dominant([2, 2, 2, -5, 2, 2, 2, -3])
#p positive_dominant([2, 4, 6, -6, -4, -2])
p positive_dominant(["String", 34, true])