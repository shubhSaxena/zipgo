module EquilibriumHelper
  def self.check_equilibrium array_string
    ans_array = []
    sum = 0
    array = array_string.split(',').map(&:to_i)
    left_sum = 0
    array.each do |n|
      sum = sum + n
    end
    
    array.each do |n|
      sum = sum - n
      if(left_sum == sum)
        ans_array << array.index(n)
      end
      left_sum = left_sum + n
    end
    return ans_array
  end
end
