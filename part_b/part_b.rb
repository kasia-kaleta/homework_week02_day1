class SportsTeam

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  # def team_name()
  #   return @team_name
  # end
  #
  # def players()
  #   return @players
  # end
  #
  # def coach()
  #   return @coach
  # end
  #
  # def set_coach_name(new_coach)
  #   @coach = new_coach
  # end

  def add_new_player(new_player)
    @players << new_player
  end

  def player_in_the_team(player)
    @players.include?(player)
  end

  def add_game_result(result)
    if result == true
      @points += 2
    end
  end

end
