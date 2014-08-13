# set up requires
require 'nokogiri'
require 'open-uri'
require 'awesome_print'


# regex to filter for search terms
def filter_links(rows, regex)
  # takes in rows and returns uses
  # regex to only return links that have "pup", "puppy", or "dog" keywords
end


# get only todays posts
def get_todays_rows(doc, date_str)
  puts get_page_results.css(".content p.row span.date")
end


# pointing at page to scrape
def get_page_results
  url = "today.html"
  doc = Nokogiri::HTML(open(url))
end


# getting data from page
def search(date_str)
  puts get_page_results.css(".content p.row span.pl")
  rows = doc.css(".row").each do |row|
    puts row.css(".date").text
  end
end




# want to learn more about 
# Time in ruby??
#   http://www.ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/Date.html#strftime-method
today = Time.now.strftime("%b %d")
search(today)