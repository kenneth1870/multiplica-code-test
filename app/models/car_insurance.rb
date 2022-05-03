# frozen_string_literal: true

class CarInsurance < ApplicationRecord
  has_many :products

  def self.update_price
    @products = Product.where(car_insurance_id: ids)
    @products.each do |product|
      if !product.name.in?(['Full Coverage', 'Special Full Coverage', 'Mega Coverage'])
        product.price -= 1 if product.price.positive?
        product.price -= 1 if product.price.positive? && product.sell_in.negative?
      else
        product.price += 2 if product.name == 'Special Full Coverage' && product.price < 50 && product.sell_in < 11
        if product.name == 'Special Full Coverage' && product.sell_in.negative?
          product.price =  product.price - product.price
        end
        product.price += 1 if product.name == 'Full Coverage' && product.price < 50
      end
      product.sell_in -= 1 if product.name != 'Mega Coverage'
      product.save!
    end
  end
end
