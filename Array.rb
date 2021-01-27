sharks = ["Hammerhead", "Great White", "Tiger"]
nested_array = [
  [
    "salmon",
    "halibut",
  ],
  [
    "coral",
    "reef",
  ]
]
print  "#{sharks}\n"


# array method #


# You can find out how many elements are in an array with the length method
puts sharks.length
puts "#" * 50

# If you wanted to find out the index number of a specific element in an array use the index()
print sharks.index("Tiger").to_s + "\n"
print sharks.index("Great White").to_s + "\n"
puts "#" * 50

# To get the last element of an array in Ruby, use the index -1
print sharks[-1] + "\n"
puts "#" * 50

# Ruby also provides the first and last methods to get the first and last elements without using indices
puts sharks.first
puts sharks.last
puts "#" * 50

# Attempting to access an index that doesn’t exist will return nil.
sharks[10]

# to retrive the value coral from this nested array, you’d use the following statement
print nested_array[1][0] + "\n"
puts "#" * 50

# There are a few ways to add a new element
sharks[3] = "whale"
print "#{sharks}\n"
puts "#" * 50

# push method, which adds an element to the end of an array
sharks.push("thresher")
print "#{sharks}\n"
puts "#" * 50

# You can also use the << syntax instead of the push method to add an element to the end of an array
sharks << "Bullhead"
print "#{sharks}\n"
puts "#" * 50

# To add an element to the beginning of an array, use the unshift() method
sharks.unshift("Angel")
print "#{sharks}\n"
puts "#" * 50

# Then use delete_at to remove the element at index
sharks.delete_at(4)
print "#{sharks}\n"
puts "#" * 50

# The delete method removes elements from an array that match the value you pass in
sharks.delete("Whale")
print "#{sharks}\n"
puts "#" * 50

# The pop method will remove the last element in an array
sharks.pop
print "#{sharks}\n"
puts "#" * 50

# remove the first element of the array
sharks.shift
print "#{sharks}\n"
puts "#" * 50


# Iterating Over an Array #

# for
for shark in sharks do
  puts shark
end
puts "#" * 50

# each
sharks.each do |shark|
  puts shark
end
puts "#" * 50

# short code
# sharks.each {|shark| puts shark }


# with index
sharks = ["Hammerhead", "Great White", "Tiger", "Whale"]
sharks.each_with_index do |shark, index|
  puts "The index is #{index}"
  puts "The value is #{shark}"
end
puts "#" * 50