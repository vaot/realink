module RssParser
  class Reuters < Base
    URLS = {
      business: "http://feeds.reuters.com/reuters/businessNews?format=xml",
      world: "http://feeds.reuters.com/Reuters/worldNews?format=xml",
      us: "http://feeds.reuters.com/Reuters/domesticNews?format=xml",
      lifestyle: "http://feeds.reuters.com/reuters/lifestyle?format=xml",
      sports: "http://feeds.reuters.com/reuters/sportsNews?format=xml",
      entertainment: "http://feeds.reuters.com/reuters/entertainment?format=xml",
      politics: "http://feeds.reuters.com/Reuters/PoliticsNews?format=xml",
      science: "http://feeds.reuters.com/reuters/scienceNews"
    }

    def self.name
      "reuters"
    end

    def self.availables
      %i(business world us lifestyle sports entertainment politics sciene)
    end
  end
end
# How to use:
# RssParser::Reuters.new(type: :lifestyle).parse
