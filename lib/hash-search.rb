require_relative 'util/hashes.rb'
require_relative 'util/names.rb'
require_relative 'util/reason.rb'
require_relative 'util/status.rb'

require 'redis'
require 'sinatra'

configure do
    set :bind, '0.0.0.0'
    set :port, 80
end

module HashSearch

    class HashSearchApp < Sinatra::Base
        configure do
            set :bind, '0.0.0.0'
            set :port, 80
        end

        redis = Redis.new

        get '/' do
            erb :index
        end

    end

    def RandomEntry
        [
            HashSearch::Hash.RandomHash,
            HashSearch::Names.RandomName,
            HashSearch::Status.RandomStatus,
            HashSearch::Reason.RandomReason
        ]
    end

end

#HashSearch::HashSearchApp.run!