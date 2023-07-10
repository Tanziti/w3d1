
class Array

 def my_each(&block)
  self.map{|num| block.call(num)}
  return self
 end

 def my_select(&block)

  if self.my_each(&block)
  new_arr
 end

end

a = [1, 2, 3]
p a.my_select { |num| num > 1 } # => [2, 3]
p a.my_select { |num| num == 4 } # => []

# return_value = [1, 2, 3].my_each do |num|
#   puts num
#  end.my_each do |num|
#   puts num
#  end
#  # => 1
#  #    2
#  #    3
#  #    1
#  #    2
#  #    3

#  p return_value  # => [1, 2, 3]
