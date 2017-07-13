module RssParser
  class Reuters < Base
    URLS = {
      business: "http://feeds.reuters.com/reuters/businessNews?format=xml",
      lifestyle: "http://feeds.reuters.com/reuters/lifestyle?format=xml"
    }

    def self.name
      "Reuters"
    end

    def self.availables
      %i(business lifestyle)
    end
  end
end
# How to use:
# RssParser::Reuters.new(type: :lifestyle).parse
