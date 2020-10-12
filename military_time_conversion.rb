#!/usr/bin/env ruby
begin
  loop do
    print "Insert a time in military time: "
    mil_time = Integer(gets)
    standard_time = mil_time - 12 if mil_time > 12
    if mil_time < 12 && mil_time > 0
      puts "#{mil_time} in standard time is #{mil_time} am"
    elsif mil_time == 12
      puts "#{mil_time} in standard time is #{mil_time} pm"
    elsif mil_time == 24
      puts "#{mil_time} in standard time is #{standard_time} midnight"
    elsif mil_time > 24
      puts "You have entered a invalid input"
    elsif mil_time.negative?
      puts "You cant enter a negative input"
    else
      puts "#{mil_time} in standard time is #{standard_time} pm"
    end

    print "Do you want to quit yes or no? [y/n]: "
    choice = gets.chomp.upcase
    break if choice == "Y"
  end
rescue ArgumentError
  puts "You have inserted a invalid input. Try again"
  retry
end
