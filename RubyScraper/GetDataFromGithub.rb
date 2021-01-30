require 'httparty'
require 'nokogiri'
require 'terminal-table'

url = "https://github.com/kira-Developer?tab=repositories"

response = HTTParty::get url
if response.code == 200
  doc = Nokogiri::HTML::DocumentFragment.parse response.body
  a = doc::css 'h3.wb-break-all a'
   aHref = doc::css 'h3.wb-break-all a[href]'
  table = Terminal::Table.new :headings  =>['lang' ,'' , 'url'] , :style => {}  do |t|
   aHref.map {|href| href}.each do |links|
     arr = [links.text.split("\n").join('') , " =>" , " https://github.com" + links['href']]
     t.add_row arr
     t.add_separator

   end
  end
end
table.style = {:width => 90, :padding_left => 3, :border_x => "=", :border_i => "x"}
puts table