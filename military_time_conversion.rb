#!/usr/bin/env ruby

require_relative "military_time_helper"

include MilitaryTimeHelper

begin
  loop do
    print "Insert a time in military time: "
    mil_time = Integer(gets)
    check_time(mil_time)

    break if play_again_prompt == "Y"
  end
rescue ArgumentError
  puts "You have inserted a invalid input. Try again"
  retry
end
