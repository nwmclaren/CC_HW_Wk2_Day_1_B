class Team

attr_reader :name, :players, :coach, :points
attr_writer :name, :players, :coach, :points


  def initialize(name, players, coach, points)
      @name = name
      @players = players
      @coach = coach
      @points = points
  end

  def add_player(player_name)
      @players.push (player_name)
  end

  def check_player(player_name)
    @players.include?(player_name)
  end

  def points_for_win(result)
    if result = "W"
      @points += 3
    end
  end

  
  # def name
  #   return @name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def set_coach(coach)
  #   @coach = coach
  # end

end
