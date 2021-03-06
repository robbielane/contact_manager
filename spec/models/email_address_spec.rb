require 'rails_helper'

RSpec.describe EmailAddress, type: :model do
  let(:email_address) { EmailAddress.new(address: 'bob@example.com', contact_id: 1, contact_type: 'Person')}

  it 'is valid' do
    expect(email_address).to be_valid
  end

  it 'is invalid without a address' do
    email_address.address = nil
    expect(email_address).to_not be_valid
  end

  it 'must have a reference a person' do
    email_address.contact_id = nil
    expect(email_address).to_not be_valid
  end

end
