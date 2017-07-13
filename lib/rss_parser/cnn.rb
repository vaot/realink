module RssParser
  class Cnn < Base

    URLS = {
      topstories: "http://rss.cnn.com/rss/cnn_topstories.rss/?format=xml",
      world: "http://rss.cnn.com/rss/cnn_world.rss/?format=xml",
      US: "http://rss.cnn.com/rss/cnn_us.rss/?format=xml",
      business: "http://rss.cnn.com/rss/money_latest.rss/?format=xml",
      politics: "http://rss.cnn.com/rss/cnn_allpolitics.rss/?format=xml",
      technology: "http://rss.cnn.com/rss/cnn_tech.rss/?format=xml",
      health: "http://rss.cnn.com/rss/cnn_health.rss/?format=xml",
      entertainment: "http://rss.cnn.com/rss/cnn_showbiz.rss/?format=xml",
      travel: "http://rss.cnn.com/rss/cnn_travel.rss/?format=xml",
      living: "http://rss.cnn.com/rss/cnn_living.rss/?format=xml"
    }

    def self.name
      "cnn"
    end

    def self.availables
      %i(topstories world US business politics technology health entertainment travel living)
    end
  end
end
