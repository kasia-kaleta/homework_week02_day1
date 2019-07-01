require('minitest/autorun')
require('minitest/rg')

require_relative('../part_b.rb')

class TestSportsTeam < MiniTest::Test

  def test_team_name
    team = SportsTeam.new("Ruby Panthers", [], "Coach Will")
    assert_equal("Ruby Panthers", team.team_name)
  end

  def test_team_players
    team = SportsTeam.new("Ruby Panthers", ["Tom", "Brad", "Michael"], "Coach Will")
    assert_equal(["Tom", "Brad", "Michael"], team.players)
  end

  def test_team_coach
    team = SportsTeam.new("Ruby Panthers", ["Tom", "Brad", "Michael"], "Coach Will")
    assert_equal("Coach Will", team.coach)
  end

  def test_set_coach_name
    team = SportsTeam.new("Ruby Panthers", ["Tom", "Brad", "Michael"], "Coach Will")
    team.coach = "Coach Matt"
    assert_equal("Coach Matt", team.coach)
  end

  def test_add_new_player
    team = SportsTeam.new("Ruby Panthers", ["Tom", "Brad", "Michael"], "Coach Will")
    team.add_new_player("Bobby")
    assert_equal(4, team.players.size)
  end

  def test_player_in_the_team
    team = SportsTeam.new("Ruby Panthers", ["Tom", "Brad", "Michael"], "Coach Will")
     assert_equal(true, team.player_in_the_team("Tom"))
  end

  def test_add_game_result
    team = SportsTeam.new("Ruby Panthers", ["Tom", "Brad", "Michael"], "Coach Will")
    team.add_game_result(true)
    assert_equal(2, team.points)
  end

end
