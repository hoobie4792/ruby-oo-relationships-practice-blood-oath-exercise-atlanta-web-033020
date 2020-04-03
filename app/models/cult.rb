class Cult
    attr_accessor :name, :location, :founding_year, :slogan, :minimum_age
    @@all = []

    def initialize(name, location, founding_year, slogan, minimum_age)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = minimum_age
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        follower.join_cult(self)
    end

    def cult_population
        BloodOath.all.select { |oath| oath.cult == self }.count
    end

    def self.find_by_name(name)
        self.all.find { |cult| cult.name == name }
    end

    def self.find_by_location(location)
        self.all.select { |cult| cult.location == location }
    end

    def self.find_by_founding_year(year)
        self.all.select { |cult| cult.founding_year == year}
    end

    def followers
        oaths = BloodOath.all.select { |oath| oath.cult == self }
        oaths.map { |oath| oath.follower }
    end

    def average_age
        ages = followers.map { |follower| follower.age }
        ages.reduce(:+).to_f / ages.length
    end

    def my_followers_mottos
        followers.each { |follower| puts follower.life_motto }
    end

    def self.least_popular
        self.all.min { |cult1, cult2| cult1.followers.length <=> cult2.followers.length }
    end

    def self.most_common_location
        locations = self.all.map { |cult| cult.location }
        locations.max { |location1, location2| locations.count(location1) <=> locations.count(location2) }
    end
end