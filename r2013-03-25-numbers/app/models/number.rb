class Number

  def self.bin2dec(str_num)
    arr = str_num.split("").reverse.map{ |i| i.to_i }
    sum = 0
    arr.each_with_index do |i, idx|
      sum += (i*(2**idx))
    end
    return sum
  end

  def self.dec2bin(num)
    arr = []
    while num/2 != 0
      remainder = num.remainder(2)
      arr.push(remainder)
      num = num/2
    end
    arr.push(num.remainder(2))
    arr.reverse.join("")
  end
end
puts "111111011101110111111111".to_i(base=2).to_s(base=16)
