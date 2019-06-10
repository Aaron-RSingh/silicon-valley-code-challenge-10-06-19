class FundingRound

    attr_writer
    attr_accessor :type, :investment
    attr_reader :startup, :venture_capitalist

    @@all = []

    def initialize(startup)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        @investment = investment.to_f
        @@all << self
    end

    def self.all
        @@all
    end

end
