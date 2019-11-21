class Event

  attr_reader :name, :ages

  def initialize(name_event, age_participants)
    @name = name_event
    @ages = age_participants
  end

  def max_age
    self.ages.max
  end

  def min_age
    self.ages.min
  end

  def average_age
    total  = 0

    self.ages.each do |age|
      total += age
    end

    total / self.ages.size.to_f
  end

  def standard_deviation_age

    total  = 0
    self.ages.each do |age|
      total += (age - self.average_age)**2
    end
    Math.sqrt(total/(ages.size)).round(2)

  end

end
