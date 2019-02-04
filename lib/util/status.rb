module HashSearch

    class Status

        @@Statuses = [
            "UNKNOWN",
            "WL-PUBLIC",
            "BL-PUBLIC",
            "WL-PRIVATE",
            "BL-PRIVATE",
            "KNOWN_GOOD",
            "KNOWN_BAD"
        ]

        def self.RandomStatus
            @@Statuses.sample
        end

    end

end