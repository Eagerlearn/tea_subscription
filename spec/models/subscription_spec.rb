require 'rails_helper'

RSpec.describe Subscription, type: :model do
  context 'relationships' do
    it { should belong_to :tea }
    it { should belong_to :customer }
  end
end
