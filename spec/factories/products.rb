FactoryBot.define do
  factory :product do
    id { 1 }
    name { 'MyString' }
    sell_in { 1 }
    price { 1.5 }
    car_insurance_id { 1 }
    created_at { '2022-05-02 21:44:09' }
    updated_at { '2022-05-02 21:44:09' }
  end
end
