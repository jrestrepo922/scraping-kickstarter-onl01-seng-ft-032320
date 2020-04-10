# require libraries/modules here
require 'nokogiri'
require 'pry'
# => no need for Open-Uri since is not a webpage.

def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  binding.pry

end

# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image_link : project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text
# location: project.css("ul.project-meta li a span.location-name").text
# funded: project.css("ul.project-stats li.first.funded strong").text


create_project_hash
