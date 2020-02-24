require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_student')
require 'pry'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test
  def test_get_name
    student = Student.new("Stephen", "E-38", "I can talk.")
    assert_equal("Stephen", student.name())
  end

  def test_get_cohort
    student = Student.new("Stephen", "E-38", "I can talk.")
    assert_equal("E-38", student.cohort())
  end

  def test_set_name()
    student = Student.new("Stephen", "E-38", "I can talk.")
    student.name = ("Sam")
    assert_equal("Sam", student.name())
  end

    def test_set_cohort()
      student = Student.new("Stephen", "E-38", "I can talk.")
      student.cohort = ("E-39")
      assert_equal("E-39", student.cohort())
    end

    def test_student_talk()
      student = Student.new("Stephen", "E-38", "I can talk.")
      assert_equal("I can talk.", student.speak)
    end

    def test_student_favourite_language
      student = Student.new("Stephen", "E-38", "I can talk.")
      assert_equal("I love Ruby!", student.favourite_language("Ruby"))
    end


end
