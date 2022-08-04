require 'rails_helper'

describe "Subscriptions API" do
  it "sends a list of Subscriptions" do
    create_list(:subscription, 3)

    get '/api/v1/subscriptions'

    expect(response).to be_successful
  end
end