def redis_config
  @redis_config ||= YAML.load(
    ERB.new(File.read("#{Rails.root}/config/redis.yml")).result
  )[Rails.env]
end

Sidekiq.configure_server do |config|
  config.redis = redis_config
end

Sidekiq.configure_client do |config|
  config.redis = redis_config
end
