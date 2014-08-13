require 'nokogiri'
require 'open-uri'
require 'awesome_print'

url = "today.html"
doc = Nokogiri::HTML(open(url))

results = doc.css(".content p.row span.pl")


ap results






















today = Time.now.strftime("%b %d")
search(today)