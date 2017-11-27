class Student

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def student_name
    return @student_name
  end

  def cohort_number
    return @cohort
  end

  def set_name(set_name)
    @student_name = set_name
  end

  def set_cohort(set_cohort)
    @cohort = set_cohort
  end

  def student_talks
    return "I can talk"
  end

  def favourite_language(language)
    return "My favourite language is #{language}"
  end



end


class Team

attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end
  #
  # def team_name
  #   return @team_name
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
  # def set_coach_name(new_coach_name)
  #   @coach = new_coach_name
  # end

def add_player(new_player_name)
  @players.push(new_player_name)

end





end
