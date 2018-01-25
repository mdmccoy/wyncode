# Create a Ruby program to replicate some of the features of the curl command. I should be able to run it from the Command Line like this:
#
# ruby curl.rb GET http://www.google.com
# The output should be the response headers followed by the response body, similar to curl -iX GET.
#
# curl -i include protocol headers in output
# curl -X request command to use, so GET

# Hint: When you pass arguments to Ruby through the Command Line, they get set into a Constant Array variable named ARGV.

# .response for the HTTP response, .headers for the rest of the info the header

require 'httparty'

if ARGV[0] = 'GET'
  webpage = HTTParty.get(ARGV[1])
  response = webpage.response

  puts "HTTP/#{response.http_version} #{response.code} #{response.message}  "
  webpage.headers.each do |key, _value|
    puts "#{key.capitalize}: #{_value}"
  end
  puts "\n\n" + webpage.body
end
