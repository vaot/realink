module RssParser
  class Bbc < Base

    URLS = {
      world: "http://feeds.bbci.co.uk/news/world/rss.xml",
      technology: "http://feeds.bbci.co.uk/news/technology/rss.xml",
      business: "http://feeds.bbci.co.uk/news/business/rss.xml",
      uk: "http://feeds.bbci.co.uk/news/uk/rss.xml",
      politics: "http://feeds.bbci.co.uk/news/politics/rss.xml",
      health: "http://feeds.bbci.co.uk/news/health/rss.xml",
      education: "http://feeds.bbci.co.uk/news/education/rss.xml",
      science: "http://feeds.bbci.co.uk/news/science_and_environment/rss.xml",
      technology: "http://feeds.bbci.co.uk/news/technology/rss.xml",
      entertainment: "http://feeds.bbci.co.uk/news/entertainment_and_arts/rss.xml"
    }

    def self.name
      "bbc"
    end

    def self.availables
      %i(world technology business uk politics health education science technology entertainment)
    end
  end
end

# RssParser::Bbc.new(type: :uk).parse