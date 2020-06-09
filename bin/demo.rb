#!/usr/bin/env ruby
require_relative '../src/bubble_sort'

raise ArgumentError, "Usage: #{$PROGRAM_NAME} <comma separated numbers> [asc|desc]" unless ARGV.length.positive?

arr = ARGV[0].split(/,\s?/)

if ARGV[1] && (%w[asc desc].include? ARGV[1].downcase)
  if ARGV[1].downcase == 'asc'
    p bubble_sort(arr)
  else
    p bubble_sort_by(arr) { |x, y| y <=> x }
  end
else
  p bubble_sort(arr)
end
