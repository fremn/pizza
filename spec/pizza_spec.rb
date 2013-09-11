require 'rubygems'
require 'bundler/setup'
require 'rspec'
require_relative '../pizza'

describe Pizza::Pie do
#describe '.initialize'

end 

describe Pizza::Topping do
  describe '.initialize' do
    it "sets the name of the topping" do
      topping = Pizza::Topping.new('olives', vegetarian: true)

      expect(topping.name).to eq('olives')
    end

    it 'sets weather or not the topping is vegetarian' do
      topping = Pizza::Topping.new 'bell peppers', vegetarian: true

      expect(topping.vegetarian).to be_true
    end
  end
end