module RssParser
  class Bbc < Base

    URLS = {
      world: "http://feeds.bbci.co.uk/news/world/rss.xml",
      technology: "http://feeds.bbci.co.uk/news/technology/rss.xml",
      business: "http://feeds.bbci.co.uk/news/business/rss.xml",
      uk: "http://feeds.bbci.co.uk/news/uk/rss.xml"

    }

    def self.name
      "bbc"
    end

    def self.availables
      %i(world technology business uk)
    end
  end
end

# RssParser::Bbc.new(type: :uk).parse