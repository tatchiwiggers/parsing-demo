# An application programming interface and they are built to return pure data
# responses — meaning the responses won’t contain the kind of presentational
# overhead that you would expect in a graphical user interface like a website...
# it wont return HTML, it will return json because it it meant for computer
# programs to read and interact with them.

# COMPARE MY PROFILE https://github.com/tatchiwiggers -> PEOPLE
# TO MY PROFILE API https://api.github.com/users/tatchiwiggers -> PROGRAMS


# TODO - Let's fetch name and bio from a given GitHub username
require 'json'
require 'open-uri'

#################################
puts 'what\'s your github username?'
username = gets.chomp

url = "https://api.github.com/users/#{username}"
#############################


# url = 'https://api.github.com/users/tatchiwiggers'

# i will use the library open uri to open this url and read the info from it
user_serialized = URI.open(url).read

# lets see what it returns -> json string
puts user_serialized

# how do we parse that information?
user = JSON.parse(user_serialized)

# lets see what it returns -> ruby hash
puts user

# now that its a ruby hash we can access my name and bio easily, ye? HOW?
puts "#{user['name']} - #{user['bio']}"
puts "#{user['name']} has #{user['public_repos']} public repos!"
# SCRAPING -> go back to script

