require 'httparty'

job_type = ARGV[0]

url = "https://jobs.search.gov/jobs/search.json?query=#{job_type}"

HTTParty.get(url).each { |job| puts job['position_title'] }

# job = response.first
#
# pp title = job['position_title']
