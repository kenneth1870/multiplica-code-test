require 'rails_helper'
describe CarInsurance, type: :model do
  context 'validations' do
    before { FactoryBot.build(:car_insurance) }

    it { should have_db_column(:id).of_type(:integer) }

    it { should have_many(:products) }
  end
end
