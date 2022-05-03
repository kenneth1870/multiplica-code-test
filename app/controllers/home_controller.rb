# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    CarInsurance.update_price
    @car_insurances = CarInsurance.all
  end
end
