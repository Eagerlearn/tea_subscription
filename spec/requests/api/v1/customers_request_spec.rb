require 'rails_helper'

describe "Customers API" do
  it "sends a list of customers" do

    create_list(:customer, 3)

    get '/api/v1/customers'

    expect(response).to be_successful

    customers = JSON.parse(response.body, symbolize_names: true)

    expect(customers.count).to eq(3)

    customers.each do |customer|
      expect(customer).to have_key(:id)
      expect(customer[:id]).to be_an(Integer)

      expect(customer).to have_key(:first_name)
      expect(customer[:first_name]).to be_an(String)

      expect(customer).to have_key(:last_name)
      expect(customer[:last_name]).to be_an(String)

      expect(customer).to have_key(:email)
      expect(customer[:email]).to be_an(String)

      expect(customer).to have_key(:address)
      expect(customer[:address]).to be_an(String)
    end
  end

# Need to create test for creating a customer
  it 'can create a customer' do

    headers = { 'CONTENT_TYPE': 'application/json'}

    request = {
      customer: {
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        address: Faker::Address.full_address
        }
      }

    post "/api/v1/customers", params: request, as: :json
  end
end