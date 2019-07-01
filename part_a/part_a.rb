class Student

  attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name()
    return @name
  end

  def cohort()
    return @cohort
  end

  def set_student_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk
    return "I can talk!"
  end

  def favorite_language(language)
    return "I love #{language}!"
  end

end
