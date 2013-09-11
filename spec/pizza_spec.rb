require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../pizza'

describe Pizza::Pie do
  describe '.initialize' do
    it "should take all the toppings" do
      toppings = [
        Pizza::Topping.new('mushroom', vegetarian: true),
        Pizza::Topping.new('pepperoni')
      ]
      pizza =Pizza::pie.new(toppings)

      expect(Pizza.toppings).to eq(toppings)
       
    end
  end

end 

describe Pizza::Topping do
  describe '.initialize' do
    it "sets the name of the topping" do
      topping = Pizza::Topping.new('olives', vegetarian: true)

      expect(topping.name).to eq('olives')
    end

    it 'sets whether or not the topping is vegetarian' do
      topping = Pizza::Topping.new 'bell peppers', vegetarian: true

      expect(topping.vegetarian).to be_true
    end
  end
end