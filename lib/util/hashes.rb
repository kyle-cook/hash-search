require 'digest'

class HashSearch

class Hash

    def self.RandomHash

        case rand 3
        when 0 then
            return Digest::MD5.new.update(rand.to_s).hexdigest.upcase
        when 1 then
            return Digest::SHA1.new.update(rand.to_s).hexdigest.upcase
        when 2 then
            return Digest::SHA2.new.update(rand.to_s).hexdigest.upcase
        end

    end

end

end