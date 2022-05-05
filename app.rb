# frozen_string_literal: true

PRODUCT_DATA = [
  ['Medium Coverage', 10, 20],
  ['Full Coverage', 2, 0],
  ['Low Coverage', 5, 7],
  ['Mega Coverage', 0, 80],
  ['Mega Coverage', -1, 80],
  ['Special Full Coverage', 15, 20],
  ['Special Full Coverage', 10, 49],
  ['Special Full Coverage', 5, 49],
  ['Super Sale', 3, 6]
].freeze

class Product
  attr_accessor :name, :sell_in, :price

  def initialize(data)
    @name = data[0]
    @sell_in = data[1].to_i
    @price = data[2].to_i
  end
end

class CarInsurance
  attr_reader :products

  def initialize(products)
    @products = products
  end

  def update_product
    @products.each do |product|
      case product.name
      when 'Medium Coverage'
        MediumCoverage.update_price(product)
      when 'Full Coverage'
        FullCoverage.update_price(product)
      when 'Low Coverage'
        LowCoverage.update_price(product)
      when 'Mega Coverage'
        MegaCoverage.update_price(product)
      when 'Special Full Coverage'
        SpecialFullCoverage.update_price(product)
      when 'Super Sale'
        SuperSale.update_price(product)
      else
        p "#{self.class} not implementation found  '#{product.name}'"
      end
    end

    @products
  end
end

class SpecialFullCoverage
  def self.update_price(product)
    product.price = product.price + 1 if product.price < 50

    product.price = product.price + 1 if product.sell_in < 11 && product.price < 50

    product.price = product.price + 1 if product.sell_in < 6 && product.price < 50

    product.sell_in = product.sell_in - 1

    product.price = product.price - product.price if product.sell_in < 0
  end
end

class FullCoverage
  def self.update_price(product)
    product.price = product.price + 1 if product.price < 50

    product.sell_in = product.sell_in - 1

    product.price = product.price + 1 if product.sell_in < 0 && product.price < 50
  end
end

class MegaCoverage
  def self.update_price(product); end
end

class MediumCoverage
  def self.update_price(product)
    product.price = product.price - 1 if product.price > 0

    product.sell_in = product.sell_in - 1

    product.price = product.price - 1 if product.sell_in < 0 && product.price > 0
  end
end

class LowCoverage
  def self.update_price(product)
    product.price = product.price - 1 if product.price > 0

    product.sell_in = product.sell_in - 1

    product.price = product.price - 1 if product.sell_in < 0 && product.price > 0
  end
end

class SuperSale
  def self.update_price(product)
    product.price = product.price - 1 if product.price > 0

    product.sell_in = product.sell_in - 1

    product.price = product.price - 1 if product.sell_in < 0 && product.price > 0
  end
end

class Printer
  attr_reader :car_insurance

  def initialize(car_insurance)
    @car_insurance = car_insurance
  end

  def format_txt_output
    p 'OMGHAI!'
    (0..30).each do |day|
      p "-------- day #{day}  --------"
      p 'name, sell_in, price'
      @car_insurance.update_product.each { |product| product_to_s(product) }
      p ''
    end
  end

  def product_to_s(product)
    p "#{product.name}, #{product.sell_in}, #{product.price}"
  end
end


@products = PRODUCT_DATA.map { |e| Product.new(e) }

@car_insurance = CarInsurance.new(@products)

Printer.new(@car_insurance).format_txt_output
