require('pry')

class Fixnum
  define_method(:ping_pong) do
    new_array = Array.new()
    binding.pry
    (1..self).step do |num|
    if num.%(15) == 0
      new_array.push("ping-pong")
    elsif num.%(5) == 0
      new_array.push("pong")
    elsif num.%(3) == 0
      new_array.push("ping")
    else
      new_array.push(num)
    end
  end
  new_array
end
end
