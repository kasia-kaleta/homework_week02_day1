require('minitest/autorun')
require('minitest/rg')

require_relative('../part_a.rb')

class TestStudent < MiniTest::Test
  def test_student_name
    student = Student.new("John", "E32")
    assert_equal("John", student.name)
  end

  def test_cohort
    student = Student.new("John", "E32")
    assert_equal("E32", student.cohort)
  end

  def test_set_student_name
    student = Student.new("John", "E32")
    student.name = "Mary"
    assert_equal("Mary", student.name)
  end

  def test_set_cohort
    student = Student.new("John", "E32")
    student.cohort = "E33"
    assert_equal("E33", student.cohort)
  end

  def test_student_talk
    student = Student.new("John", "E32")
    assert_equal("I can talk!", student.talk)
  end

  def test_favorite_language
    student = Student.new("John", "E32")
    assert_equal("I love Ruby!", student.favorite_language("Ruby") )
  end


end
