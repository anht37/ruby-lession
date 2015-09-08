def array_filter(ary, type)
	types = {even: 0, odd: 1}
	return nil unless ary.is_a?(Array) && types.has_key?(type)
	filter = types[type]
	ary.select{|i| i.send("#{type}?")}
end
