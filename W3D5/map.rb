class Map
    
    def initialize
        @map = []
    end
    
    def set(key, val)
        idx = nil 
        @map.each_with_index do |arr, i| 
            if arr[0] == key 
                arr[1] = val 
                return val
            end 
        end
        @map << [key, val]
    end
    
    def get(key)
        @map.each do |arr| 
            if arr[0] == key 
                return arr.last
            end 
        end
        nil
    end
    
    def delete(key)
        value = get(key)

        @map.each_with_index do |arr, i| 
            if arr[0] == key 
                @map.delete_at(i)
                break
            end 
        end
        value
    end
    
    def show
        @map.map do |arr| 
            [arr.first, arr.last]
        end
    end

end

# m = Map.new 
# p m.show 
# m.set(1, "A")
# m.set(2, "B")
# m.set(3, "C")
# p m.show 
# m.delete(2)
# p m.show
# p m.get(3)
# m.set(1, "B")
# p m.show