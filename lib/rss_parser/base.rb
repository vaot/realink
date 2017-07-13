require 'rss'
require 'net/http'

module RssParser
  class Base

    CategoryNotSupportedError = Class.new(StandardError)

    def self.name
      # Should be implemented by sub classes
      # "bbc"
    end

    def self.availables
      # Should be implemented by sub classes
      # %i(world technology)
    end

    def initialize(type:)
      unless self.class.availables.include?(type)
        raise CategoryNotSupportedError.new("#{type} not supported")
      end

      @type = type
    end

    def parse
      return @parsed if @parsed.present?

      reply = Net::HTTP.get(get_rss_feed_uri)
      @parsed ||= RSS::Parser.parse(reply)
    end

    private

    def get_rss_feed_uri
      @uri ||= URI.parse(self.class::URLS.fetch(@type))
    end

  end
end
