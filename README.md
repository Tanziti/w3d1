# w3d1
class Array

 def my_each(&block)
  self.each do |num|
    block.call(num)
  end
  return self
 end

end

