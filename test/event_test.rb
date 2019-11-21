require 'minitest/autorun'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/event'

class EventTest < Minitest::Test

  def test_it_exists
    my_event = Event.new("hockey", [23, 25, 21, 24, 19])

    assert_instance_of Event, my_event
  end

  def test_it_has_a_name
    my_event = Event.new("hockey", [23, 25, 21, 24, 19])
    assert_equal "hockey", my_event.name
  end

  def test_it_has_an_array_of_ages
    my_event = Event.new("hockey", [23, 25, 21, 24, 19])
    assert_equal [23, 25, 21, 24, 19], my_event.ages
  end

  def test_it_can_find_min_age
    my_event = Event.new("hockey", [23, 25, 21, 24, 19])
    assert_equal 19, my_event.min_age
  end

  def test_it_can_find_max_age
    my_event = Event.new("hockey", [23, 25, 21, 24, 19])
    assert_equal 25, my_event.max_age
  end

  def test_it_can_calculate_the_average_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal 26.6, event.average_age
  end

  def test_it_can_calculate_the_standard_deviation_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal 8.28, event.standard_deviation_age
  end

end
