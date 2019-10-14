def positive_dominant(arr)
    #Your code here
    i=0
    a=0
    positives=0
    negatives=0
    while a<arr.count
        if (arr[a].is_a?(Integer) || arr[a].is_a?(Float))
             
             a+=1
        else
         arr.delete_at(a)
        end
     
     end
    
    while i<(arr.count)
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