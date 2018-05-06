module EquilibriumHelper
  def self.check_equilibrium array_string
    ans_array = []
    sum = 0
    array = array_string.split(',').map(&:to_i)
    left_sum = 0
    array.each do |n|
      sum = sum + n.to_i
    end
    
    array.each do |i,n|
      sum = sum - n.to_i
      if(left_sum == sum)
        ans_array << array.index(n.to_i)
        break
      end
      left_sum = left_sum + n.to_i
    end
    return ans_array
  end
end
