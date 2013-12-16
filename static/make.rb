require "erb"
include ERB::Util

class Template
  def initialize(name)
    @erb = ERB.new(File.read(name))
  end
  
  def result(binding)
    @erb.result(binding).gsub(/^\s*$\n/, "").chomp
  end
end

module Helpers
  def header(dir, active_link)
    Template.new("helpers/header.rhtml").result(binding)
  end
  
  def side_nav_header(menu)
    Template.new("helpers/side_nav_header.rhtml").result(binding)
  end
  
  def h3(menu, id)
    Template.new("helpers/h3.rhtml").result(binding)
  end
  
  def side_nav_footer
    Template.new("helpers/side_nav_footer.rhtml").result(binding)
  end
  
  def footer
    Template.new("helpers/footer.rhtml").result(binding)
  end
end

class Page
  include Helpers
  attr_reader :url, :html
  
  def initialize(config, name)
    @url = "#{File.dirname(name)}/#{File.basename(name, ".rhtml")}.html"
    @html = Template.new(name).result(binding)
  end
end

page_names = ["*.rhtml"]
page_names = (page_names.map {|name| Dir.glob(name)}).flatten
pages = page_names.map {|name| Page.new(@config, name)}
for page in pages do
  File.open("#{page.url}", "w") {|f| f << page.html}
end
puts "#{pages.size} HTML files generated."
