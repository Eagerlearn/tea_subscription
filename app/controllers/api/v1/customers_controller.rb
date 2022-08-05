class Api::V1::CustomersController < ApplicationController
  def index
    render json: Customer.all
  end
end

# TeaSerializer.new(Tea.all)