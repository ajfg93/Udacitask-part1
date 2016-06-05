class Dog
  def wag_tail
    puts "Waggy waggy wag!"
  end

  def drink_water_from_bowl
    puts "Slurp slurp, this water's great!"
  end

end

# class User
#   attr_reader :username, :birthday
#   attr_writer :username
#   attr_accessor :test
#
#   def initialize(username)
#     @username = username
#   end
# end


class Person
  attr_reader :first_name, :last_name
  def name
    @first_name + " " + @last_name
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

class IceCreamShop
  # attr_accessor :flavors
  attr_reader :flavors
  def initialize
    @flavors = []
  end

  def add_flavor (new_flavor)
    @flavors.push(new_flavor)
    @flavors.uniq!
  end

  def remove_flavor (removed_flavor)
    # @flavors.delete_if {|each_flavor| each_flavor == removed_flavor}
    @flavors.delete(removed_flavor)
  end
end
