=begin
puts "Please enter the states you know. Type 'done' when you are finished."

statearr = []

userstate = gets.chomp.upcase.to_s
	
until userstate == "DONE"
	statearr.push(userstate)
	userstate = gets.chomp.upcase.to_s
end

puts "This is the solution:"

statearr.each do |x|
 	puts x
end

##puts.statearr.join(", ")
##^ can join by comma
=end


students = ["Storm","Theresa","Eric","Mallory","Jennifer","Curtis","Alavia","Walid", "Kasuana"]

num_students = students.length

students.shuffle!

count = 0

until count == num_students
	if num_students % 2 == 1
		if count < num_students - 3
			puts "#{students[count]}, #{students[count+1]}"
		else
			puts "#{students[count]}, #{students[count+1]}, #{students[count+2]}"
			break
		end
	else
		puts "#{students[count]}, #{students[count+1]}"
	end

	count +=2
end

##puts classnames


=begin
Less concise and bugged way I was trying:
if classnames.length % 2 == 0
	until count == classnames.length
		puts "#{classnames[count]}, #{classnames[count+1]}"
		count += 2
	end
else
	remainder = classnames.length % 2
	if remainder == 1
		until count == classnames - (remainder + 2)
			puts "#{classnames[count]}, #{classnames[count+1]}"
			count +=2
		end
		puts "#{classnames[count]}, #{classnames[count+1]}, #{classnames[count+2]}"
	else
		until count == classnames - (remainder)
			puts "#{classnames[count]}, #{classnames[count+1]}"
			count +=2
		end
		puts "#{classnames[count]}, #{classnames[count+1]}, #{classnames[count+2]}"
	end
end
=end