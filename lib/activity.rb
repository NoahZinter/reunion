class Activity
  attr_reader :name, :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name, money)
    @participants.update(name => money)
  end

  def total_cost
    @participants.values.sum
  end

  def split
    total_cost / @participants.keys.length
  end

  def owed
    split = self.split
    @participants.map do |name, money|
      @participants[name] = (split - money)
    end

    @participants
  end
end
