module RssParser
  class Cbn < Base

    URLS = {
      world: "http://www1.cbn.com/rss-cbn-news-world.xml",
      US: "http://www1.cbn.com/rss-cbn-news-US.xml",
      politics: "http://www1.cbn.com/rss-cbn-news-politics.xml"
      finance: "http://www1.cbn.com/rss-cbn-news-finance.xml",
      health_and_science: "http://www1.cbn.com/rss-cbn-news-health.xml",
      africa_matters:"http://www1.cbn.com/rss-cbn-blogs-africamatters.xml",


    }

    def self.name
      "cbn"
    end

    def self.availables
      %i(world US politics finance health_and_science africa_matters)
    end
  end
end
