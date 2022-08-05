require 'rails_helper'

describe "Customer Subscriptions API" do
  xit "can create a customers subscription" do
    tea = Tea.create!(title: "green", description: "smooth", temperature: 130, brew_time: 10)
    customer = Customer.create!(first_name: "craig", last_name: "me", email: "this@that.com", address: "1 state street, town CO, 11111")
    subscription = Subscription.create!(title: "healthy", price: 25, status: 1, frequency: 2)

# require "pry"; binding.pry
    get '/api/v1/subscriptions'

    expect(response).to be_successful
  end
end