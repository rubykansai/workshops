#!/usr/bin/env ruby
require 'apache_log'

logs = File.readlines('log3.txt').collect{ |line| ApacheLog.new( line ) }

# Q.1 ------------------------------------------------------------
index_rdf_list = logs.select{ |log| log.request_uri == '/index.rdf' }

puts "A.1"
puts  index_rdf_list.size
puts

# Q.2 ------------------------------------------------------------
mac_access = logs.find { |log| /Mac/ =~ log.user_agent }

puts "A.2"
puts mac_access.time
puts

# Q.3 ------------------------------------------------------------
google_list = logs.select { |log| /google/ =~ log.referer }

puts "A.3"
puts google_list.size
puts

# Q.4 ------------------------------------------------------------
week_list = Hash.new(0)
logs.each { |log| week_list[log.time.strftime('%a')] += 1 }

week_list = week_list.sort_by { |wday, count| count }

puts "A.4"
puts week_list.last[0]
puts

# Q.5 ------------------------------------------------------------
user_agent_list = Hash.new(0)
logs.each { |log| user_agent_list[log.user_agent] += 1 }

user_agent_list = user_agent_list.sort_by { |user_agent, count| count }

puts "A.5"
user_agent_list.reverse[0..10].each do |user_agent, count|
  puts "#{count} ... #{user_agent}"
end
