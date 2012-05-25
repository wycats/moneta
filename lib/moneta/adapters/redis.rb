begin
  require "redis"
rescue LoadError
  puts "You need the redis gem to use the Redis store"
  exit
end

module Moneta
  module Adapters
    class Redis
      include Defaults

      def initialize(options = {})
        @cache = ::Redis.new(options)
      end

      def key?(key, *)
        !@cache[key_for(key)].nil?
      end

      def [](key)
        deserialize(@cache.get(key_for(key)))
      end

      def delete(key, *)
        string_key = key_for(key)
        value = self[key]
        @cache.del(string_key) if value
        value
      end

      def store(key, value, opts={})
        string_key = key_for(key)
        @cache.set(string_key, serialize(value))
        @cache.expire(string_key, opts[:expires_in]) if opts[:expires_in]
      end

      def clear(*)
        @cache.flushdb
      end
    end
  end
end