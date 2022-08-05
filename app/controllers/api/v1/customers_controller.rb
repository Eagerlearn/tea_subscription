class Api::V1::CustomersController < ApplicationController
  def index
    render json: Customer.all
  end

  def create
    render json: Customer.create!(cust_params)
  end

  private
  def cust_params
    params.require(:customer).permit(:first_name, :last_name, :email, :address)
  end
end