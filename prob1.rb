def extract_urls(text)
    pattern = /((https?|ftp):\/\/)?([a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}|(?:www\.|[\w\-]+\.)*[a-z0-9]+\.[a-z]{2,5})(:[0-9]{1,5})?(\/[^\s]*)?/
    text.scan(pattern).each { |url| puts url }
  end
  
  sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources with a filename.pdf. Also visit us on www.subdomain.example.net/path#fragment"
  
  extract_urls(sample_text)
  