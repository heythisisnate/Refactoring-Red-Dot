require File.expand_path('spec_helper', File.dirname(__FILE__))

describe Dish do
  subject { Dish.new(name: 'Chicken Rice', price: 350) }

  it "returns a price in any currency" do
    subject.price.should == 350
    subject.price_in(:myr).should == 840
    subject.price_in(:usd).should == 280
  end
end