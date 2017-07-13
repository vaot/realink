module RssParser
  class Global < Base

    URLS = {
      bc: "http://globalnews.ca/bc/feed/?format=xml",
      calgary: "http://globalnews.ca/calgary/feed/?format=xml",
      edmonton: "http://globalnews.ca/edmonton/feed/?format=xml",
      lethbridge: "http://globalnews.ca/lethbridge/feed/?format=xml",
      regina: "http://globalnews.ca/regina/feed/?format=xml",
      saskatoon: "http://globalnews.ca/saskatoon/feed/?format=xml",
      winnipeg: "http://globalnews.ca/winnipeg/feed/?format=xml",
      toronto: "http://globalnews.ca/toronto/feed/?format=xml",
      montreal: "http://globalnews.ca/montreal/feed/?format=xml",
      halifax: "http://globalnews.ca/halifax/feed/?format=xml",
      canada: "http://globalnews.ca/canada/feed/?format=xml",
      world: "http://globalnews.ca/world/feed/?format=xml",
      politics: "http://globalnews.ca/politics/feed/?format=xml",
      money: "http://globalnews.ca/money/feed/?format=xml",
      health: "http://globalnews.ca/health/feed/?format=xml",
      entertainment: "http://globalnews.ca/entertainment/feed/?format=xml",
      environment: "http://globalnews.ca/environment/feed/?format=xml",
      tech: "http://globalnews.ca/tech/feed/?format=xml",
      sports: "http://globalnews.ca/sports/feed/?format=xml"

    }

    def self.name
      "global"
    end

    def self.availables
      %i(bc calgary edmonton lethbridge regina saskatoon winnipeg toronto montreal halifax canada world politics money health entertainment environment tech sports)
    end
  end
end

# How to use:
# RssParser::Global.new(type: :bc).parse
