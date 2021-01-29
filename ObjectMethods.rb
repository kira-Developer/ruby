class Student
  attr_accessor :name , :major , :gpa

  def initialize(name , major , gpa)
    @name = name
    @major = major
    @gpa = gpa
  end
  def hasHonors
    if @gpa >= 3.5
      return true
    end
    return false
  end


end
student1 = Student.new "jim" , "Businees" ,2.6
student2 = Student.new "pam" , "Art" ,3.6
puts student1.hasHonors
puts student2.hasHonors