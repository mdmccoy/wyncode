class UrlParser
  def initialize(url)
    @url = url
  end

  def scheme
    @url.split(":")[0]
  end

  def domain
    @url.split(":")[1].split("//")[1]
  end

  
end
