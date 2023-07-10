
class Array

 def my_each(&block)
  self.map{|num| block.call(num)}
  return self
 end

 def my_select(&block)
  narr = []
  self.my_each do |num|
    narr << num if block.call(num)
 end 
 return narr
end

end

a = [1, 2, 3]
p a.my_select { |num| num > 1 } # => [2, 3]
p a.my_select { |num| num == 4 } # => []

