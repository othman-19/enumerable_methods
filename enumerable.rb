module Enumerable
    def my_each
        i = 0
        while i < self.size
            yield(self[i])  
            i+=1      
        end
        self
    end
end

arr=[1,2,3,4,5,6];
arr.my_each{|x| puts "#{x}!" }
