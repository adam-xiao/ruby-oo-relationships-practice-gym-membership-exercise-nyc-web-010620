class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def memberships
    Membership.all.select{ |membership| membership.member == self }
  end

  def self.avg_all_lifts
    lift_totals = self.all.map{ |lifter| lifter.lift_total }
    lift_totals.reduce(0) { |sum, ele| sum + ele } / lift_totals.length
  end

  def membership_total
    self.memberships.sum { |memebership| memebership.cost }
  end

  def join_gym(gym, cost)
    Membership.new(cost, self, gym)
  end
end
