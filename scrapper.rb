# set up requires
require 'nokogiri'
require 'open-uri'
require 'awesome_print'


# regex to filter for search terms -- still need regex...
def get_dog_rows(rows) #, regex
  # takes in rows and returns uses
  # regex to only return links that have "pup", "puppy", or "dog" keywords
  results = []
  rows.css(".hdrlnk").each do |row|
    results.push(row.text)
  end
  results
end

# get only todays posts, implement logic here: date, hdrlink, .p (bonus for pics), regex later
def get_todays_rows(doc, date_str)
  doc.css(".row").select do |row|
  row.css(".date").text == date_str &&
  row.css(".hdrlink") == rows
  ap row
  end
  
end

# pointing at page to scrape
def get_page_results
  url = "today.html"
  page = Nokogiri::HTML(open(url))
  get_todays_rows(page, "")
end

# search doc for dog_rows to return link
def search(date_str)
  doc = get_page_results
  # rows = get_todays_rows(doc, date_str)
  # puts rows
  # dog_rows = get_dog_rows(rows)
  # puts dog_rows
end


# want to learn more about 
# Time in ruby??
#   http://www.ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/Date.html#strftime-method
today = Time.now.strftime("%b %d")
search(today)