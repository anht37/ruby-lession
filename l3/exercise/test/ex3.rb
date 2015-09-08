def calculate(*args,method)
  methods = {:add => :+, :sub => :- , :mul => :* , :div => :/}
  return nil unless methods.has_key?(method) && args.all?{|arg| arg.is_a? Numeric}
  args[0] = args[0].to_f
  args.inject(methods[method])
end
