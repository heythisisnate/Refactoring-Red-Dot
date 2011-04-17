require File.expand_path('spec_helper', File.dirname(__FILE__))

describe Menu do

  let(:menu_in_myr) do
    [
      {:name=>"Chicken Rice", :price=>840},
      {:name=>"Prawn Noodle", :price=>960},
      {:name=>"Herbal Duck",  :price=>960},
      {:name=>"Curry Rice",   :price=>768},
      {:name=>"Carrot Cake",  :price=>720}
    ]
  end

  specify "three different ways to convert prices of menu items to MYR" do
    subject.to_myr__1.should == menu_in_myr
    subject.to_myr__2.should == menu_in_myr
    subject.to_myr__3.should == menu_in_myr
  end

end