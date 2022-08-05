require 'rails_helper'

describe "Teas API" do
  it "sends a list of Teas" do
    create_list(:tea, 3)

    get '/api/v1/teas'

    expect(response).to be_successful

    teas = JSON.parse(response.body, symbolize_names: true)

    expect(teas[:data].count).to eq(3)

    expect(teas[:data]).to be_an(Array)

    teas[:data].each do |tea|
      expect(tea).to have_key(:id)
      expect(tea[:id]).to be_an(String)

      expect(tea[:attributes]).to have_key(:title)
      expect(tea[:attributes][:title]).to be_an(String)

      expect(tea[:attributes]).to have_key(:description)
      expect(tea[:attributes][:description]).to be_an(String)

      expect(tea[:attributes]).to have_key(:temperature)
      expect(tea[:attributes][:temperature]).to be_an(Integer)

      expect(tea[:attributes]).to have_key(:brew_time)
      expect(tea[:attributes][:brew_time]).to be_an(Integer)
    end
  end
end