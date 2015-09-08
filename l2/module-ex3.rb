module Trig
	def self.sin
		p "Trig module, sin function to calculate sin from #{self.class}"
	end
end

module Action
	def self.sin
		p "Action module, sin function to detect human's sin from #{self.class}"
	end
end


class SimpleMath
	include Trig
	include Action
	def test_trig
		Trig.sin
	end
	def test_action
		Action.sin
	end
end

SimpleMath.new.test_trig
SimpleMath.new.test_action

