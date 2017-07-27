module RssParser
  class Bbc < Base

    URLS = {
      world: "http://feeds.bbci.co.uk/news/world/rss.xml",
      technology: "http://feeds.bbci.co.uk/news/technology/rss.xml",
      business: "http://feeds.bbci.co.uk/news/business/rss.xml",
      uk: "http://feeds.bbci.co.uk/news/uk/rss.xml",
      entertainment: "http://feeds.bbci.co.uk/news/entertainment_and_arts/rss.xml",
      politics: "http://feeds.bbci.co.uk/news/politics/rss.xml",
      science: "http://feeds.bbci.co.uk/news/science_and_environment/rss.xml"

    }

    def self.name
      "bbc"
    end

    def self.availables
      %i(world technology business uk entertainment politics science)
    end
  end
end

# RssParser::Bbc.new(type: :uk).parse