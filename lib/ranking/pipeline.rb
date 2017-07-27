module Ranking
  class Pipeline
    def initialize(rss_item)
      @rss_item = rss_item
      @rankers = []
    end

    def add(ranker)
      @rankers.push(ranker)
    end

    def run
      @rankers.inject(0) do |score, ranker|
        score + ranker.new(@rss_item).score
      end
    end
  end
end
