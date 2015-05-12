array = [[5,11,87,49,52,99],
[20,5,67,34,12],
[92,57,91,77,45,29,56,38,18,68,92,26,42,55,46],
[56,18,10,92,54,14,84,79],
[32,34,27,1.1,87,24,97],
[93,2,78,45,96,94,16,74,99,14,33],
[72,41,56,89,12,45,68,29,83,78,58,17,11,69],
[29,26,38,96,99,2,54],
[41,48,24,25,63,11,39],
[4,27,40,88,10,59,90]]

def sum array
  sum_row = array.map { |row| row.reduce(:+) }
  sum_row.each { |sum| sum }
end
#
# def row_count array
#   count = 0
#   array.each { |row| count = count + row.count }
#   count
# end
#
# def average array
#   sum(array).reduce(:+)/row_count(array)
# end

merge = array.reduce(:+)
count = merge.count

puts "Sum of rows: #{sum array}"
puts "Average of all: #{merge.reduce(:+)/count}"
