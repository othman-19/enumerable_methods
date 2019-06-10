module Enumerable
    def my_each
        i = 0
        while i < self.size
            yield(self[i])  
            i+=1      
        end
        self
    end
    
    #arr=[1,2,3,4,5,6]
    #arr.my_each{|x| puts "#{x}!" }

    def my_each_with_index
        i = 0
        while i < self.size
            yield(self[i],i)  
            i+=1      
        end
        self
    end

    #arr=[2,4,6,8,10,12]
    #arr.my_each_with_index{|x,i| puts "#{x},#{i}!"}

    def my_select
        selected=[]
        self.my_each do |item|
            yield(item) 
            selected.push(item) if yield(item)
        end  
        selected
    end
end

arr=[2,4,6,8,10,12]
puts arr.my_select{|x| x > 6}


