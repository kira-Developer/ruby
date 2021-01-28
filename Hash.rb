states =  {
  "pennsylvania" => "PA",
  "New York" => "NY",
  :Oregon => "OR",
}
h = {foo: 0, bar: 1, baz: 2}

# How Can Create Hash #
# h = {:foo => 0, :bar => 1, :baz => 2}
# h = Hash.new
# h = Hash[]
# h = {}
puts states ; puts "#" * 50


# Get Hash Value #
puts states[:Oregon]
puts states["pennsylvania"]
puts "#" * 50

# Create A Hash #
h[:bat] = 3 # => 3
puts h ; puts "#" * 50

# Update Value in Hash #
h[:foo] = 4 # => 4
puts h ; puts "#" * 50

# Delete A Hash #
h.delete(:bar) # => 1
puts h ; puts "#" * 50

# Get All keys in Hash #
puts h.keys
puts h ; puts "#" * 50

# Get All Values in Hash #
puts h.values
puts h ; puts "#" * 50