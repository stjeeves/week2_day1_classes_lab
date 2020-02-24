class SportsTeam

attr_accessor :team_name, :players, :coach, :points

def initialize(team_name, players, coach, points)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = 0
end

def new_player(player)
  @players.push(player)
end

def check_players(player)
  @players.any?(player)
end

def points_change(result)
   if result == "win"
     @points += 3
   end
   return @points
end



end
