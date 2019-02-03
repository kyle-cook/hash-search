class HashSearch

class Reason

    @@Reasons = [
        "Because",
        "I don't know...",
        "Someone dared me to.",
        "Someone told me to do this",
        "Some SRE was performed",
        "Last time it didn't save",
        "Looks like something went wrong here.",
        "Actually misclicked last time"
    ]

    def self.RandomReason
        @@Reasons.sample
    end

end

end