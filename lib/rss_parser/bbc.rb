module RssParser
  class Bbc < Base

    URLS = {
      world: "http://feeds.bbci.co.uk/news/world/rss.xml",
      technology: "http://feeds.bbci.co.uk/news/technology/rss.xml",
      business: "http://feeds.bbci.co.uk/news/business/rss.xml"
    }

    def self.name
      "bbc"
    end

    def self.availables
      %i(world technology business)
    end
  end
end
