require 'time'
def display_date(data)
	begin
		time = Time.parse(data.to_s)
		string = "Input time is $1. The day after this day is $2"
		return string.gsub("$1", time.strftime('%Y-%m-%d %H:%M:%S')).gsub("$2", (time +86400).strftime("%Y-%m-%d"))
	rescue ArgumentError
		return "Input is not a time : #{data}"
	end
end


