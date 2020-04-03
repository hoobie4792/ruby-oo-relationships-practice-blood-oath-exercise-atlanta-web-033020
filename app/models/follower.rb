class Follower

    attr_accessor :name, :age, :life_motto

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        
    end

    def cults
        Cult.all.select { |cult| cult.follower == self}
    end

    def join_cult(cult)
        
    end




end