module Trig
	def sin
		p "Trig module, sin function to calculate sin from #{self.class}"
	end
end

module Action
	def sin
		p "Action module, sin function to detect human's sin from #{self.class}"
	end
end


class SimpleMath
	include Trig
	def test
		sin
	end
end

class SimpleHuman
	include Action
	def test
		sin
	end
end


class MoreHuman
	include Trig
	include Action

	def test
		sin
	end
end

class MoreMath
	include Action
	include Trig
	def test
		sin
	end
end

[:SimpleMath, :SimpleHuman, :MoreHuman, :MoreMath].each do |klass|
	eval(klass.to_s).new.test
end

