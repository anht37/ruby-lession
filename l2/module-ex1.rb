module Speed
  def go_fast
    p "I am an instance of #{self.class} and I can run very fast"
  end
end

class Car
  include Speed
  def go
    p "I am an instance of Car and I go with normal speed"
  end
end

class Truck < Car
  def go_slow
    p "I am an instance of Truck and I go with slow speed"
  end
end

Car.new.go
Car.new.go_fast
Truck.new.go
Truck.new.go_slow
Truck.new.go_fast
