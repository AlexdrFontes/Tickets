require 'rails_helper'

RSpec.describe Venue, type: :model do
  subject { build(:venue) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an address' do
    subject.address = nil
    expect(subject).to_not be_valid
  end
end
