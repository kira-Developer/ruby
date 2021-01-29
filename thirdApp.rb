class Question
  attr_accessor :prompt , :answer
  def initialize (prompt , answer)
    @prompt =  prompt
    @answer = answer
  end
end

p1 = "What Color Are Apples?\n(a) red\n(b) purple\n(c) orange"
p2 = "What Color Are Bananas?\n(a) pink\n(b) red\n(c) yellow"
p3 = "What Color Are Pears?\n(a) yellow\n(b) green\n(c) orange"

questions = [
  Question.new(p1 , 'a'),
  Question.new(p2 , 'c'),
  Question.new(p3 , 'b')
]
def runTest questions
  answer = ""
  score = 0
  for question in questions
    puts question.prompt
    answer = gets.chomp
    if answer == question.answer
      score +=1
    end
  end
  puts "You Got " + score.to_s + "/" + questions.length.to_s
end
runTest questions