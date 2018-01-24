require 'httparty'
require 'nokogiri'
require 'pry'
require 'json'

# response =HTTParty.get("https://api.github.com/users/mdmccoy")
#
#
#
# # p response.headers.each do |key,value|
# #   puts key+"=>"+value
# # end
# # p response.body
# pp json_response = JSON.parse(response.body)
#
# p json_response["login"]

# data =  JSON.dump({name: "Matt", username: "mdm"})
# headers = {'Content-Type' => 'application/json'}
#
# response = HTTParty.post("https://requestb.in/rfpv3krf",{headers:headers,body:data})
# # pp response
#
# p response.headers['Content-Type']

# response = HTTParty.get(url)
# dom = Nokogiri::HTML(HTTParty.get(url).body)

url = "https://miami.craigslist.org/search/#{ARGV[0]}"
jobs = Nokogiri::HTML(HTTParty.get(url).body).css('a.result-title')
(0...jobs.length).each do |index|
  puts index.to_s + '.) ' + jobs[index].text + "\n" + jobs[index].values[0]
end

# pp jobs = dom.css('a.result-title.hdrlnk').map(&:content)
