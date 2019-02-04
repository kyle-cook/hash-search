require 'digest'

module HashSearch

    class Hash

        def self.RandomHash

            case rand 3
            when 0 then
                return "MD5:#{Digest::MD5.new.update(rand.to_s).hexdigest.upcase}"
            when 1 then
                return "SHA1:#{Digest::SHA1.new.update(rand.to_s).hexdigest.upcase}"
            when 2 then
                return "SHA2:#{Digest::SHA2.new.update(rand.to_s).hexdigest.upcase}"
            end

        end

    end

end