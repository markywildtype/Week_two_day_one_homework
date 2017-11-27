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

#Part B

class Team

attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
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

def check_players(player_query)
  if @players.include?(player_query)
    return true
  else
    return false
  end
end

def points(win_status)
  @points += 2 if win_status == "win"
  @points += 1 if win_status == "draw"
  return @points
end

end

class Library

  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def list_books(library)
    return library
  end

  def book_information(book_title)
    for book in @books
      if book[:title] == book_title
        return book
        break
      end
    end
  end

  def rental_details(book_title)
    for book in @books
      if book[:title] == book_title
        return book[:rental_details]
        break
      end
    end
  end

end
