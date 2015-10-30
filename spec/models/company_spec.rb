require 'rails_helper'

RSpec.describe Company, type: :model do
  let(:google) { Company.new(name: "Google") }

  it 'is valid' do
    expect(google).to be_valid
  end

  it 'is invalid without a name' do
    company = Company.new(name: nil)

    expect(company).to_not be_valid
  end

  it 'has an array of phone numbers' do
    expect(company.phone_numbers).to eq([])
  end

end
