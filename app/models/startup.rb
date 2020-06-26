class Startup
    # attr_accessor 
    attr_reader :founder, :domain, :name
    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        save
    end

    def save
        self.class.all << self
    end
    
    def self.all
        @@all
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end

    def self.find_by_founder(name)
        self.all.find do |startup|
            startup.founder == name
        end
    end

    def self.domains
        self.all.map do |startup|
            startup.domain
        end
    end

    def sign_contract(venture_capitalist, type, investment)
        FundingRound.new(self, venture_capitalist, type, investment)
    end

    def funding_rounds
        FundingRound.all.select do |funding_round|
            funding_round.startup == self
        end
    end

    def num_funding_rounds
        self.funding_rounds.count
    end

    def total_funds
        total = 0
        funding_rounds.each do |funding_round|
            total += funding_round.investment
        end
        total
    end
    
    def investors
        funding_rounds.map do |funding_round|
            funding_round.venture_capitalist
        end
    end

    def big_investors
        investors.select do |investor|
            VentureCapitalist.tres_commas_club.include?(investor)
        end
    end

end