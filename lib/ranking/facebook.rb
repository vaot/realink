module Ranking
  class Facebook
    def initialize(rss_item)
      @rss_item = rss_item
    end

    def score
      reply = fetch_from_graph_api
      share_count = reply.fetch("share", {}).fetch("share_count", 0)
      comment_count = reply.fetch("share", {}).fetch("comment_count", 0)

      comment_count*2 + share_count
    end

    private

    def fetch_from_graph_api
      reply = RestClient.get("https://graph.facebook.com?id=#{@rss_item.link}").body
      JSON.parse(reply)
    end
  end
end
