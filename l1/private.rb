class A
  def main_method
    method1
  end

  private
  def method1
    puts "hello from #{self.class}"
  end
end

class B < A
  def main_method
    self.method1
  end
end

A.new.main_method
B.new.main_method
