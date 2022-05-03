# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :sell_in
      t.float :price
      t.integer :car_insurance_id

      t.timestamps
    end
  end
end
