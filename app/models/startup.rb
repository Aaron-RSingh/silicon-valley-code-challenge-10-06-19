class Startup

    attr_writer
    attr_accessor :name
    attr_reader :founder, :domain

    @@all = []
    def initialize(name)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end

    def pivot(domain:, name:)
        @domain = domain
        @name = name
    end

    def self.find_by_founder
        @@all.founder.find do |founder|
            startup.founder.name
            #maybe quicker way is: @@all.find.founer {|founder| startup.founer.name}
        end
    end
    #should return an array of all the different startup domains
    def self.domains
        startup.domain do |domain|
            startup.domain
        end
    end

    # `Startup#sign_contract`
    # - given a **venture capitalist object**, type of investment (as a string), and the amount invested 
    # (as a float), creates a new funding round and associates it with that startup and venture capitalist.
    def sign_contract(type, investment)
        Funding_round.new(type, investment) == self
    end

    # `Startup#num_funding_rounds`
    # - Returns the total number of funding rounds that the startup has gotten
    def num_funding_rounds
        self.funding_round.type.count
    end

#     `Startup#total_funds`
#   - Returns the total sum of investments that the startup has gotten
    def total_funds
        self.funding_round.investment.sum = total_funds
        puts total_funds
    end

    # `Startup#investors`
    # - Returns a **unique** array of all the venture capitalists that have invested in this company
    def investors
        investor_array = []
        investor_array << self.funding_round.investor
        investor_array.uniq = investors
        puts investors
    end

    # `Startup#big_investors`
    # - Returns a **unique** array of all the venture capitalists that have invested in this company and 
    # are in the Trés Commas club
    def big_investors
        # investors.VentureCapitalist.tres_commas_club.map 
        big_investor_array = []
        if investors.VentureCapitalist.tres_commas_club
            big_investor_array << investors
            puts big_investor_array
        end
    end
    
end
