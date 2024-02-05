#!/usr/bin/env ruby

# Check if the argument is provided
if ARGV.empty?
    puts "Usage: #{$PROGRAM_NAME} <string>"
    exit 1
  end
  
  # Get the argument
  input_string = ARGV[0]
  
  # Define the regular expression
  regex = /School\z/
  
  # Match the regular expression
  match_result = input_string.match(regex)
  
  # Print the result
  if match_result
    puts "#{match_result[0]}$"
  else
    puts "$"
  end
  