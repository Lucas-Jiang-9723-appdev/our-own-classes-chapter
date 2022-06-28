# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate

require "date"
class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :birthdate

  def full_name
    p self.first_name + " " + self.last_name
    return self.first_name + " " + self.last_name
  end
  def age
    dob = Date.parse(self.birthdate)
    yoa = Date.today.year - dob.year
    p yoa.to_i
    return yoa.to_i
  end
end

# Test your instance methods by adding to the end of this file:

#  new_person = Person.new
#  new_person.first_name = "Joe"
#  new_person.last_name = "Mama"
#  p new_person.full_name 
# Output:
#=>  "Joe Mama"

#  other_person = Person.new
#  other_person.birthdate = "April 19, 1987"
#  p other_person.age
# Output:
#=>  45
