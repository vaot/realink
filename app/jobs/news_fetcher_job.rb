class NewsFetcherJob < ApplicationJob
  queue_as :default

  def perform(klass_name)
    klass = klass_name.constantize
    klass.availables.each do |type|
      Redis.current.del("#{klass.name}_#{type}")

      klass.new(type: type).parse.items.each do |item|

        score_pipeline = Ranking::Pipeline.new(item)
        score_pipeline.add(Ranking::Facebook)
        score = score_pipeline.run

        Redis.current.zadd("#{klass.name}_#{type}", score, {
          link: item.link,
          source: klass.name,
          type: type,
          title: item.title
        }.to_json)
      end
    end
  end
end
