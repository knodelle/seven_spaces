$redis = Redis.new

url = ENV["redis://rediscloud:zvZ8KNHvXBXtWEG5D1p95YeaeyB09Smy@redis-12007.c77.eu-west-1-1.ec2.cloud.redislabs.com:12007"]

if url
  Sidekiq.configure_server do |config|
    config.redis = { url: url }
  end

  Sidekiq.configure_client do |config|
    config.redis = { url: url }
  end
  $redis = Redis.new(:url => url)
end
