class VentureCapitalist

    attr_accessor :name, :total_worth
    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select do |investor|
            investor.total_worth >= 1_000_000_000
        end
    end

    def offer_contract(startup, type, investment)
        FundingRound.new(startup, self, type, investment)
    end

    def funding_rounds
        FundingRound.all.select do |funding_round|
            funding_round.venture_capitalist == self
        end
    end

    def portfolio
        funding_rounds.map do |funding_round|
            funding_round.startup
        end.uniq
    end

    def biggest_investment
        funding_rounds.sort_by do |funding_round|
            funding_round.investment
        end.last
    end

    def invested(domain)
        total = 0
        funding_rounds.each do |funding_round|
            if funding_round.startup.domain == domain
                total += funding_round.investment
            end
        end
        total
    end
end
