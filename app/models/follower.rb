class Follower
    attr_accessor :name, :age, :life_motto
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        oaths = BloodOath.all.select { |oath| oath.follower == self }
        oaths.map { |oath| oath.cult }
    end

    def join_cult(cult)
        if self.age >= cult.minimum_age
            BloodOath.new(self, cult, "2020-04-03")
        else
            puts "You too young silly"
        end
    end

    def self.of_a_certain_age(age)
        self.all.select { |follower| follower.age == age }
    end

    def my_cult_slogans
        oaths = BloodOath.all.select { |oath| oath.follower == self }
        cults = oaths.map { |oath| oath.cult }
        cults.each { |cult| puts cult.slogan }
    end

    def self.most_active
        followers = BloodOath.all.map { |oath| oath.follower }
        followers.max { |follower1, follower2| followers.count(follower1) <=> followers.count(follower2) }
    end

    def self.top_ten
        most_active_followers = []
        followers = BloodOath.all.map { |oath| oath.follower }
        while (most_active_followers.length < 10 and followers != []) do
            most_active_follower = followers.max { |follower1, follower2| followers.count(follower1) <=> followers.count(follower2) }
            most_active_followers << most_active_follower
            followers.delete(most_active_follower)
        end
        most_active_followers
    end

    def fellow_cult_members
        oaths = BloodOath.all.select { |oath| oath.follower == self }
        cults = oaths.map { |oath| oath.cult }
        fellow_members = []
        cults.each do |cult|
            fellow_members << cult.followers
        end
        fellow_members = fellow_members.flatten
        fellow_members.delete(self)
        fellow_members.uniq
    end
end