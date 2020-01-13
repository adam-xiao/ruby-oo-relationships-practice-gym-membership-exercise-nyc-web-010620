class Gym
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def current_memberships
    Membership.all.select{ |membership| membership.gym == self }
  end

  def current_members
    self.current_memberships.map { |membership| membership.member }
  end

  def current_member_names
    self.current_members.map { |member| member.name }
  end

  def gym_lift_totals
    self.current_members.sum { |member| member.lift_total }
  end

end
