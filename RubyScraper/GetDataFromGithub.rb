# frozen_string_literal: true

# Libraries
require 'httparty'
require 'nokogiri'
require 'terminal-table'

url = 'https://github.com/kira-Developer?tab=repositories'

response = HTTParty.get url
if response.code == 200
  doc = Nokogiri::HTML::DocumentFragment.parse response.body # Get response Body
  a = doc.css 'h3.wb-break-all a[href]' # The Tag I Want Find It
  table = Terminal::Table.new headings: ['lang', '', 'url'], style: {} do |t| # Terminal Table
    a.map { |href| href }.each do |links| # Searching For Text And Links
      arr = [links.text.split("\n").join(''), ' =>', " https://github.com#{links['href']}"] # Put The Data In Array
      t.add_row arr # Put Array In Table Rows
      t.add_separator # Add Separator
    end # End map Each
  end # End Table Each
end # End The Condition

table.style = { width: 90, padding_left: 3, border_x: '=', border_i: 'x' } # Set Some Design
puts table
