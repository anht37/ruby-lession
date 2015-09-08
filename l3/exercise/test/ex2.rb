def calculate(a,b,method)
  methods = {:add => :+, :sub => :- , :mul => :* , :div => :/}
  return nil unless methods.has_key?(method) && a.is_a?(Numeric) && b.is_a?(Numeric)
  a.send(methods[method], b.to_f)
end
