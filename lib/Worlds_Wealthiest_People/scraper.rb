require 'open-uri'
require 'nokogiri'
require 'pry'
require_relative './Person.rb'


class WorldsWealthiestPeople::Scraper 

#gets URL page for the website you are scraping from, the HTML document 

  def get_page
    Nokogiri::HTML(open("https://www.businessinsider.com/richest-people-world-billionaires-list-2017-11"))
  end

#scrape individual wealthy people from list
#operate on HTML page, return NOKOGIRI elements that describe each person, so call on get_page method  
  def scrape_people_index
     self.get_page.css("<body data-site-id="bi"> == $0 <div class="prebid-helper" data-continent-code")
  end
  
  #<div class="prebid-helper" data-continent-code="NA">
  #</div>

#Iterate over each element in the wealthy people array, fill up empty array with scraped data 
#from the attr_accessors in the person.rb file 
  def make_wealthiest_people
    scrape_people_index.each do |x|
      WorldsWealthiestPeople::Person.new_from_index_page(x)
    end
  end
end