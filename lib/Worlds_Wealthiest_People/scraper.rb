require 'open-uri'
require 'nokogiri'
require 'pry'

class WorldsWealthiestPeople::Scraper 

#gets URL page for the website you are scraping from 
  def get_page
    Nokogiri::HTML(open("https://www.businessinsider.com/richest-people-world-billionaires-list-2017-11"))
  end

#scrape individual wealthy people from list 
  def scrape_people_index
     self.get_page.css("div[data-list='1-50'] a.item")
  end

  def make_wealthiest_people
    scrape_people_index.each do |x|
      WorldsWealthiestPeople::Person.new_from_index_page(x)
    end
  end
end