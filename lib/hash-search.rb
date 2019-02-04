require_relative 'util/hashes.rb'
require_relative 'util/names.rb'
require_relative 'util/reason.rb'
require_relative 'util/status.rb'

require 'json'
require 'redis'
require 'sinatra'
require 'sinatra/json'

module HashSearch

    def RandomEntry
        [
            HashSearch::Hash.RandomHash,
            HashSearch::Names.RandomName,
            HashSearch::Status.RandomStatus,
            HashSearch::Reason.RandomReason
        ]
    end

    module_function :RandomEntry

    class HashSearchApp < Sinatra::Base
        configure do
            set :bind, '0.0.0.0'
            set :port, 8080
        end

        @@redis

        before do 
            @@redis = Redis.new
            """
            for i in 0..1000000
                hash = HashSearch.RandomEntry
                @@redis.set(hash[0], hash[1..3].to_json)
            end
            """
        end

        get '/' do
            erb :index
        end

        get '/favicon.ico' do
            nil
        end

        get '/count' do
            #32 MD5
            #40 SHA1
            #64 SHA2
            @@redis.keys("*").count
        end

        get '/:type/:hash' do |type, hash|
            json @@redis.scan(0, :match=>"#{type.upcase}:*#{hash.upcase}*", :count=>10000000)
        end

        get '/match/:type/:hash' do |type, hash|
            json JSON.parse(@@redis.get("#{type.upcase}:#{hash.upcase}"))
        end

    end

end

HashSearch::HashSearchApp.run!