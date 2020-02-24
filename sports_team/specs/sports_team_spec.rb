require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')
require 'pry'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test

  def test_get_team_name
    team = SportsTeam.new("Leith Honey Badgers", ["Steve", "Sam", "Mike"], "Jack", 0)
    assert_equal("Leith Honey Badgers", team.team_name())
  end

  def test_get_player
    team = SportsTeam.new("Leith Honey Badgers", ["Steve", "Sam", "Mike"], "Jack", 0)
    assert_equal(["Steve", "Sam", "Mike"], team.players())
  end

  def test_get_coach
    team = SportsTeam.new("Leith Honey Badgers", ["Steve", "Sam", "Mike"], "Jack", 0)
    assert_equal("Jack", team.coach())
  end

  def test_set_coach
    team = SportsTeam.new("Leith Honey Badgers", ["Steve", "Sam", "Mike"], "Jack", 0)
    team.coach = "Bob"
    assert_equal("Bob",team.coach())
  end

  def test_new_player
    team = SportsTeam.new("Leith Honey Badgers", ["Steve", "Sam", "Mike"], "Jack", 0)
    team.new_player("James")
    assert_equal(["Steve", "Sam", "Mike", "James"], team.players())
  end

  def test_check_players
    team = SportsTeam.new("Leith Honey Badgers", ["Steve", "Sam", "Mike"], "Jack", 0)
    assert_equal(true, team.check_players("Steve"))
  end

  def test_points_change
    team = SportsTeam.new("Leith Honey Badgers", ["Steve", "Sam", "Mike"], "Jack", 0)
    result = "win"
    assert_equal(3, team.points_change(result))
  end



end
