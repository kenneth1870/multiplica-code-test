require './app'

RSpec.describe Product do
  context 'Create product' do
    it 'validations' do
      product = Product.new(['Full Coverage', 0, 10])

      expect(product.name).to eq('Full Coverage')
      expect(product.sell_in).to eq(0)
      expect(product.price).to eq(10)
    end
  end
end

RSpec.describe CarInsurance do
  context 'Add products' do
    it 'save multiple products' do
      products = [
        Product.new(['Special Full Coverage', 0, 20]),
        Product.new(['Full Coverage', 2, 0])
      ]

      car_insurance = CarInsurance.new(products)
      expect(car_insurance.products.length).to eq(2)
    end
  end

  context 'Modify prices' do
    it 'given a product can be modified' do
      products = [Product.new(['Special Full Coverage', 5, 20])]
      car_insurance = CarInsurance.new(products)
      car_insurance.update_product

      expect(car_insurance.products.first.sell_in).to eq(4)
      expect(car_insurance.products.first.price).to eq(23)
    end
  end
end
