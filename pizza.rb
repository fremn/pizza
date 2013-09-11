module Pizza
  class Pie
    attr_accessor :toppings

    def initialize(toppings = nil)
        @toppings = toppings || [Pizza::Topping.new('cheese', vegetarian: true)]
    end
  end

  class Topping
    attr_accessor :name, :vegetarian
    # Instaniate a new topping
    #
    # name - The String name of the opping
    #
    # Return a new Topping Object
    def initialize(name, vegetarian: false)
      @name = name
      @vegetarian = vegetarian
    end
  end
end