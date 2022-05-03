require 'rails_helper'
describe Product, type: :model do
  context 'validations' do
    before { FactoryBot.build(:product) }

    it { should have_db_column(:id).of_type(:integer) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:sell_in).of_type(:integer) }
    it { should have_db_column(:price).of_type(:float) }
    it { should have_db_column(:car_insurance_id).of_type(:integer) }

    it { should belong_to(:car_insurance) }
  end
end
