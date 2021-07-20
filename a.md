# PARSING AND STORING DATA
Today our lecture will have a little less concepts than what we've been doing
so far... today we will talk about how to handle data, how to handle information.
and you will learn today the difference formats of data that you can store in
your computer.

# data formats
So lets start talking about data formats - there are three major data formats,
out there on the internet - 3 very common formats which are CSV, XML and JSON.

Are you familiar with any of these data formats?

# LECTURE BOILERPLATE
for this lecture we are going to use a boilerplater provided by lewagon.

# CSV
what is a CSV file?
Lets take a look at one and see what is looks like.
Here is an example of a CSV file: beers.csv

# CSV 1
CSV stands for comma separated values. Where each line of the file is a data
record. Each record consists of one or more fields, separated by commas. And
by fileds, i mean columns...
The use of the comma as a field separator is the source of the name for this
format.

# CSV 2 -> go over the slide

# CSV 3 - BUT WITH A LACK OF STANDARD
But there is a problem here... CSV will come in different forms... sometimes
Delimiters aren't commas, Fields aren't always quoted... sometimes we will have
a comma, but sometimes our delimiter will be a semicolon... sometimes our values
will have quotation marks, sometimes they wont... csv files they can be a bit messy.
And we will never really know how a CSV file will come to us.

Any questions so far about CSV files?

# XML
XML stands for Extensible Markup Language is a markup language that defines a set
of rules for encoding documents in a format that is both human-readable and
machine-readable.

# XML (1)
XML looks a bit like HTML doesnt it? Which is also a mark up language.
Anyone know what HTML stands for? Hyper Text Markup Language.
So here is what an XML file looks like
we have opening tags, closing tags and we have the content inside those tags...
anyone ever seen one of these before?


# XML (2) - go over slide
As I said earlier...
So of course, there is a prob with this format.. any idea of what that might be?
the problem here is that this format is very verbose and in the end the file size
can be quite large.
So this is when JSON comes into the picture

# JSON
JSON stands for Javascript Object Notation and it uses human-readable text to store
and send data objects consisting of key–value pairs and arrays.

# JSON (1) - show
so this is what a json file looks like.
notice the key:value pairs and the arrays
What type of object have you guys recently learned that consists of key value pairs?

# JSON (2) - read slide

# ALL FORMAT HEAVILY USED IN WEB SERVICES
so those 3 formats are heavlity used in web services today, so try and get really
comfortable with them ok?

# PARSING AND STORING
So lets start manipulating these files uding ruby, and for that we are gonna talk
about parsing and storing.

# WHAT IS PARSING?

Data parsing is a method where one type of data gets converted into a different
type of data. So here we receive your data in JSON, and we will parse that file
transfoming it into a ruby hash, so that we can manipulate it usgin ruby code.
Bu the things is, We CANT manipulate json directly with ruby... we need to
convert it into a ruby object first.
Same here with the CSV... whenever we we read a CSV file using ruby, the
data we will have in our hands will be an array.
Lets use that csv beers file for example.

When we parse a csv file into a ruby object, EACH column of our csv
file will be an element of an array and each array itself will be a record.

CSV to RUBY
['name', 'appearance', origin]
["Edelweiss","White","Austria"]
["Cuvée des Trolls","Blond","Belgium"]
["Choulette Ambrée","Amber","France"]
["Gulden Draak","Dark","Belgium"]

XML to  Ruby
Here we will need to use a gem to do this parsing. The gem we will use is called
Nokogiri and it will generate a nokogiri object in ruby for us to manipulate.
A XML file will be parsed into a Nokogiri::XML object that is similar to an
array therefore will be manipulted as an array.

OK!!
So let's make sure you all understand what parsing is. WHAT IS PARSING lady and
gentlemen?
lets take this file, read it and convert it in memory to a ruby object so that
i can manipulate it.

# WHATS STORING
so whats storing you guys? We talked plenty about parsing. so by looking at the slide
here, who can tell me what storing is?
It means i have a ruby object in memory but i need to save that information somewhere.
So i convert it to the format i want and save that information in a file, whether
it be json, csv or xml. Its just like any file you ever use. if i wanna write a
paper for school you open MS word, write your paper, press the save button and
later to access that data all you have to do is open that file ye? SAME THING
happens here, except we are writing ruby code and sending that ruby code to those
files.

ANY QUESTIONS? all right, lets go to the fun part now... lets actually PARSE
some files. lets start with CSV.

But how exactly de wo parse a csv file? Let's see how...

# PARSING CSV
1. first we will need to use the csv lib to help us with that. the csv lib
contains all the methods we need to parse and manípulate csv files.
GOOGLE it -> csv gem documentation
Go over quickly the doc.

GO TO THE CSV_DEMO FILE

# PARSING CSV (2)
so... guess what...? having that index in our file is not the best way to do it.
The library actually gives us a solution to the headers problem.

# PARSING JSON
go to ruby script json demo

# parsing xml -> go to slide
we will not write code for this today in class but here the slide gives you
the code to use in case you need to use it. the reason why is bc it is a bit rare
that you will need to parse xml.. but in case you do, here is the code.
i do a lot at my job bc
we work we a lot of legacy software... our clients consist mostly of banks and
insurance companies and they have been around for decades so most of them still
use xml.


# INSTALL NOKOGIRI FOR THEM TO SEE

# STORING XML WITH NOKOGIRI

# DATA FROM THE WEB

# using json api
we are going to take a look at a json api and the one we are gonna look at is...
github api

Example base url: api.github.com/
endpoints: api.github.com/users/tatchiwiggers


What is an API and what is it used for? To fetch information from an endpoint and
offer that info as a product or another service.

A good example here is Github. The lewagon kitt is integrated with github.
When you sign in on kitt the sign in is actually done through github - every time
you push exercises on github, GH fetches the code and runs rake to update the
dashboard on kitt. And this is only possible because GH has an API.

I'm not going to go into this aspect too much, but I leave you
guys free to explore. if you guys type github api on google, you will be able
to see the documentation.

TALK ABOUT ENDPOINTS:
https://api.github.com/orgs/lewagon/repos

So lets look at the user endpoint

GO TO API DEMO.RB

# SCRAPING -> go back to script
Sometimes there is no API. We have to scrape the HTML directly

# INSPECT ELEMENT

# CSS SELECTOR

# SCRAPING
Go to scraping demo.rb

