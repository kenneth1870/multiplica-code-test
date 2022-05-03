# frozen_string_literal: true

car_insurance = CarInsurance.new
car_insurance.save!

Product.create(name: 'Medium Coverage', sell_in: rand(1..10), price: rand(1..100), car_insurance_id: car_insurance.id)
Product.create(name: 'Full Coverage', sell_in: rand(1..10), price: rand(1..100), car_insurance_id: car_insurance.id)
Product.create(name: 'Low Coverage', sell_in: rand(1..10), price: rand(1..100), car_insurance_id: car_insurance.id)
Product.create(name: 'Mega Coverage', sell_in: rand(1..10), price: rand(1..100), car_insurance_id: car_insurance.id)
Product.create(name: 'Mega Coverage', sell_in: rand(1..10), price: rand(1..100), car_insurance_id: car_insurance.id)
Product.create(name: 'Special Full Coverage', sell_in: rand(1..10), price: rand(1..100),
               car_insurance_id: car_insurance.id)
Product.create(name: 'Special Full Coverage', sell_in: rand(1..10), price: rand(1..100),
               car_insurance_id: car_insurance.id)
Product.create(name: 'Special Full Coverage', sell_in: rand(1..10), price: rand(1..100),
               car_insurance_id: car_insurance.id)
Product.create(name: 'Super Sale', sell_in: rand(1..10), price: rand(1..100), car_insurance_id: car_insurance.id)
