FactoryGirl.define do
  factory :location do
    name "ABC madhapur"
    address "Inorbit, Madhapur"
  end

  factory :menu do
    association :location, factory: :location
    item "#{Idly.downcase}"
    day "Sunday"
    type_of "Breakfast, Dinner"
  end

end
