require 'uri'

class UrlParser
  def initialize(url)
    @uri = URI.split(url)
  end

  def scheme
    @uri[0]
  end

  def domain
    @uri[2]
  end

  def port
    if @uri[3]
      @uri[3]
    elsif @uri[0] == "http"
      "80"
    elsif @uri[0] == "https"
      "443"
    end
  end

  def path
    @uri[5][/\w+/]
  end

  def query_string
    array = @uri[7].split(/\W+/)
    hash = {}
    i = 0
    while i < array.length do
      hash[array[i]] = array[i+1]
      i += 2
    end
    hash
  end

  def fragment_id
    @uri[8]
  end
end
