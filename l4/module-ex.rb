module A
  def foo
    p "foo from #{self}"
  end

  def bar
    p "bar #{self}"
  end

  def self.module_func
    p "self module_func from #{self}"
  end
end

class IncludeClass
  include A
end

class ExtendClass
  extend A
end

p IncludeClass.instance_methods
p IncludeClass.new.foo
p IncludeClass.new.bar

p ExtendClass.instance_methods
p ExtendClass.foo
p ExtendClass.bar

