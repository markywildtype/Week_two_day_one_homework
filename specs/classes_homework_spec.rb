require "minitest/autorun"
require "minitest/rg"
require_relative "../classes_homework.rb"

class TestClassesHomework < Minitest::Test

  def setup
    @student = Student.new("Mark", 18)
    @team = Team.new("E18", ["Mark", "Kris"], "Jimmy")
    @library1 = Library.new([{
      title: "Let The Right One In",
      rental_details: {
        student_name: "Mark",
        date: "23/12/17"
        }
      },
      {
      title: "It",
      rental_details: {
        student_name: "Brian",
        date: "8/01/18"
        }
      },
      {
      title: "The Knife of Never Letting Go",
      rental_details: {
        student_name: "Jeremiah",
        date: "14/02/18"
        }
      },
      {
      title: "American Gods",
      rental_details: {
        student_name: "Clementine",
        date: "3/12/17"
        }
      }])

  end

  def test_student
    student = Student.new("Mark",18)
  end

  def test_student_name
    student = Student.new("Mark",18)
    assert_equal("Mark", student.student_name)
  end

  def test_cohort
    assert_equal(18, @student.cohort_number)
  end

  def test_set_name
    @student.set_name("Kris")
    assert_equal("Kris", @student.student_name)
  end

  def test_set_cohort
    @student.set_cohort(16)
    assert_equal(16, @student.cohort_number)
  end

  def test_student_talks
    assert_equal("I can talk", @student.student_talks)
  end

  def test_favourite_language
    assert_equal("My favourite language is Ruby", @student.favourite_language("Ruby"))
  end

#Part B


  def test_team_name
    assert_equal("E18", @team.team_name)
  end

  def test_players
    assert_equal(["Mark", "Kris"], @team.players)
  end

  def test_coach
    assert_equal("Jimmy", @team.coach)
  end

  def test_set_name
    @team.coach = "Tam"
    assert_equal("Tam", @team.coach)
  end

  def test_add_player
    assert_equal(["Mark", "Kris", "Hamish"], @team.add_player("Hamish"))
  end

  def test_check_player
    assert_equal(true, @team.check_players("Kris"))
    assert_equal(false, @team.check_players("Jason"))
  end

  def test_update_points
    assert_equal(0, @team.points("lose"))
    assert_equal(2, @team.points("win"))
  end

#Extension

  def test_list_books
    assert_equal(@library1, @library1.list_books(@library1))
  end

end
