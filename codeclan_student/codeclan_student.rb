class Student

  attr_accessor :name, :cohort, :speech

  def initialize(name, cohort, speech)
    @name = name
    @cohort = cohort
    @speech = speech
  end

def speak()
  return "I can talk."
end

def favourite_language(language)
  return "I love #{language}!"
end

end
