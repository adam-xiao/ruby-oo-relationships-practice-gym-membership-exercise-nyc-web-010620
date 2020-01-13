class Membership
  attr_reader :cost, :member, :gym

  @@all = []

  def self.all
    @@all
  end

  def initialize(cost, member, gym)
    @cost = cost
    @member = member
    @gym = gym

    @@all << self
  end

  
end
