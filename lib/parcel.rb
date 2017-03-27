require ('pry')

class Parcel
  define_method(:initialize) do |height, length, width, weight|
      @height = height
      @length = length
      @width = width
      @weight = weight
  end

  define_method(:volume) do
      @height*@length*@width
  end

  define_method(:shippingcost) do | distance , speed |
    if distance.<10
      distance_cost = 5
    elsif distance.<20
      distance_cost = 10
    elsif (distance>=20).&(distance < 100)
      distance_cost = 10 + (distance/10)
    end
    speed_cost = {
      "Normal" => 3,
      "Express" => 6,
      "Same Day" => 10
    }
    volume.*@weight.+distance_cost.+speed_cost.fetch(speed)
  end
end
