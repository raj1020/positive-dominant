#An Array is positive dominant if it contains more unique positive numbers than unique 
#negative numbers. Write a method that will take an array as it's argument, and will 
#return true if the array is positive dominant, or false if it is not. Note, you may 
#receive some other data types in the arrays. These should be ignored.
# E.g. positive_dominant([5, 99, -3, -8, 832, -3, -8]), should return true (as there are 3 unique positive numbers, and only 2 unique negative numbers)
# E.g. positive_dominant([2, 2, 2, -5, 2, 2, 2, -3]), should return false
# E.g. positive_dominant([2, 4, 6, -6, -4, -2]), should return false
# E.g. positive_dominant(["String", 34, true]), should return true

def positive_dominant(arr)
    
    i=0
    a=0
    positives=0
    negatives=0
    while a<arr.count #Used the while loop to get rid of the elements other than floats or integers in the array
        if (arr[a].is_a?(Integer) || arr[a].is_a?(Float))
             
             a+=1
        else
         arr.delete_at(a)
        end
     
     end
    
    while i<(arr.count) #THis while loop counts the number of positive and negative elements in the array
        j=i+1
        while j<arr.count
            if arr[i]==arr[j]
                arr.delete_at(j)
                next
            end
            
            j+=1
           
        end

        if arr[i]>0
            positives+=1
        end

        if arr[i]<0
            negatives+=1
        end
        
        i+=1
       
    end

   
    if positives > negatives || arr==[0]
        return true
    else
        return false
    end

end

 p positive_dominant([5, 99, -3, -8, 832, -3, -8])
 p positive_dominant([2, 2, 2, -5, 2, 2, 2, -3])
 p positive_dominant([2, 4, 6, -6, -4, -2])
 p positive_dominant(["String", 34, true])