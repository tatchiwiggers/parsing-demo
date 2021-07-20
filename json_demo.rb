require 'json'

# COPY SLIDE AND PASTE IT HERE
filepath    = 'data/beers.json'

serialized_beers = File.read(filepath)
p serialized_beers
# string
p serialized_beers.class
puts serialized_beers

# deserialize the file (from HD to memory)
beers = JSON.parse(serialized_beers)
# beers is a ruby Hash
p beers.class


#TODO display the name of the second beer in the file

# array
puts beers['beers']

# hash
puts beers['beers'][1]

# how do i access the name of that second beer?
p beers['beers'][1]['name']

# you see how we navigate thru the file accessing array indexes and
# hash keys?


# TODO: Display all the origins
# what is beers? An Array of beers.
# how do we manipulate arrays? THROUGH ITERATION!!

beers['beers'].each do |beer|
  # what type of object is my variable beer?? A HASH
  puts beer['origin']
end


# # TODO: Display all the UNIQUE origins -> sorted
origins = []

beers['beers'].each do |beer|
  # what type of object is my variable beer?? A HASH
  origins << beer['origin']
end

# # not unique nor sorted
p origins
# # sorted but not unique
p origins.sort
# # hear hear! sorted and unique
p origins.sort.uniq

# STORING JSON
beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Guinness',
    appearance: 'Stout',
    origin:     'Ireland'
  },
]}

p beers

File.open(filepath, 'wb') do |file|
  # json.generate is the opposite of json.parse
  file.write(JSON.generate(beers))
end

# GO TO SLIDE PARSING XML
