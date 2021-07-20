require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from http://www.bbcgoodfood.com

ingredient = 'chocolate'
url = "https://www.bbcgoodfood.com/recipes/chocolate-fudge-crinkle-biscuits"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

# p html_doc.search('.post-header__title').class

#<h1 class="post-header__title post-header__title--masthead-layout heading-1">Chocolate fudge crinkle biscuits</h1>


html_doc.search('.post-header__title').each do |element|
  p element.text
  # <h1 class="post-header__title post-header__title--masthead-layout heading-1">Chocolate fudge crinkle biscuits</h1>
  # puts element.text
end

