require 'open-uri'

open "http://www.google.com" do |f|
  puts f.read
end
