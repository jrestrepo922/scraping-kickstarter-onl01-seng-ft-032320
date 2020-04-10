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
create_project_hash
