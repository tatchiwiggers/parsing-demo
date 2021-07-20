require 'csv'

# TODO - let's read/write data from beers.csv
# TALK ABOUT PATH AND HOW TO FIND YOURSELF IN THE DIRS
# USE TREE
# USE CAT data/beers.csv

filepath = 'data/beers.csv'
# each we'll call on an instance of a class.
# CSV.new.each
# CSV.foreach we call directly on the class.


CSV.foreach(filepath) do |row|
  # p row
  name = row[0]
  appearance = row[1]
  origin = row[2]
  puts "#{name} - #{appearance} - #{origin}"
  # puts "#{row[0]} - #{row[1]} - #{row[2]}"
end

# but we are also printing the very first line which are the headers of my file.
# i dont want the headers, just the content.
# so what i can do is:
# be creative, you are not limited by what the lib is giving you ok?
index = 0

CSV.foreach(filepath) do |row|
  if index > 0
    puts "#{row[0]} - #{row[1]} - #{row[2]}"
    # puts index
  end
   index += 1
end

# PARSING CSV (2)
# so... guess what...? having that index in our file is not the best way to do it.
# The library actually gives us a solution to the headers problem.

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
# headers: :first_row -> here we say that our first row are the headers. that
# way csv will understand that the first row are the headers and it will ignore it.

# Now here when we call foreach on the CSV class, we will also pass the csv_options
# as an argument.
# what type of object is inside my csv_options variable?
# how do we access a hash? for example...

CSV.foreach(filepath, csv_options) do |row|
  # its a CSV row and it behaves like a hash. if it behaves like a hash
  # how can i access the names of my beers? note that row is a hash ok?
  p row
  puts "#{row['Name']}"
  puts "#{row['Name']}, is a(an) #{row['Appearance']} beer from #{row['Origin']}."
end


# STORING CSV
# Now lets do the opposite! Lets take ruby objects and save them into a csv file.
# we are going to call the open method on the CSV class (see doc) - the open
# method will takes these args
# 'wb' stands for write binary
# GOOGLE -> file mode ruby

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  csv << ['Asahi', 'Pale Lager', 'Japan']
  csv << ['Guinness', 'Stout', 'Ireland']
end


# WHAT IF????

require  'csv'

filepath = 'data/beers.csv'
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

beers = [
  {'name': 'Asahi', 'appearance': 'Pale Lager', 'origin': 'Japan'},
  {'name': 'Guinness', 'appearance': 'Stout', 'origin': 'Ireland'},
  {'name': 'Heineken', 'appearance': 'Blond', 'origin': 'Amsterdam'}
]

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  beers.each do |beer|
    csv << [beer[:name], beer[:appearance], beer[:origin]]
  end
end


# GO BACK TO SCRIPT FOR PARSING JSON
