require 'rails_helper'

RSpec.describe Order, type: :model do
  subject { build(:order) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without an email' do
    subject.email = nil
    subject.valid?
    expect(subject.errors[:email]).to_not be_empty
  end
end
