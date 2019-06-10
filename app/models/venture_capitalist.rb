class VentureCapitalist

    attr_writer
    attr_accessor :name, :total_worth
    attr_reader

    @@all = []

    def initalize(name)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        venture_capitalist.total_worth.map do |total_worth|
            if total_worth > 1,000,000,000
            end
        end
    end

    #  `VentureCapitalist#offer_contract`
    #     - given a **startup object**, type of investment (as a string), and the amount 
    #     invested (as a float), creates a new funding round and associates it with that 
    #     startup and venture capitalist.
    def offer_contract(type, investment)
        Startup.new(type, investment) == self
    end

    #   `VentureCapitalist#funding_rounds`
    #   - returns an array of all funding rounds for that venture capitalist
    def funding_rounds
        self.funding_round.map
    end

    #    `VentureCapitalist#portfolio`
    #   - Returns a **unique** list of all startups this venture capitalist has funded
    def portfolio
        self.all.funding_round.collect.uniq
    end

    # `VentureCapitalist#biggest_investment`
    # - returns the largest funding round given by this venture capitalist
    def biggest_investment
        # array.max_by(&:field)
        portfolio.max_by(&:funding_round)
    end

    #     `VentureCapitalist#invested`
    #   - given a **domain string**, returns the total amount invested in that domain
    def invested(domain)
        startup.domain.total_amount
    end
end
