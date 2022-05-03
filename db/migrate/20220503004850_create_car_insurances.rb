# frozen_string_literal: true

class CreateCarInsurances < ActiveRecord::Migration[6.1]
  def change
    create_table :car_insurances, &:timestamps
  end
end
