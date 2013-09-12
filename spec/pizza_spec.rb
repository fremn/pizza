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

      pizza = Pizza::Pie.new(toppings)

      expect(pizza.toppings).to eq(toppings)
       
    end
    it 'defaults the toppings to cheese only, if the pizza has no toppings' do
      pizza = Pizza::Pie.new

      expect(pizza.toppings.size).to eq(1)
      expect(pizza.toppings.first.name).to eq('cheese')
    end
  end
  describe '#vegetarian?' do
    it "should return true if all toppings are vegetarian" do
      pizza = Pizza::Pie.new()

      expect(pizza.vegetarian?).to be_true

    end
  end    
end 

##

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
