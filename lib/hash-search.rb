require_relative 'util/hashes.rb'
require_relative 'util/names.rb'
require_relative 'util/reason.rb'
require_relative 'util/status.rb'

class HashSearch

    # The hello goodbye ruby boiler plate
    #
    # Example:
    #   >> Speak.helloworld
    #   => "Hello World"

    def self.helloworld
        "Hello World!"
    end

    def self.goodbyeworld
        "Goodbye World!"
    end

    def self.RandomEntry
        [
            HashSearch::Hash.RandomHash,
            HashSearch::Names.RandomName,
            HashSearch::Status.RandomStatus,
            HashSearch::Reason.RandomReason
        ]
    end

end
