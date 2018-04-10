require 'rails_helper'

RSpec.describe Ticket, type: :model do
  subject { build(:ticket) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    subject.valid?
    expect(subject.errors[:name]).to_not be_empty
  end

  it 'is not valid without a status' do
    subject.status = nil
    subject.valid?
    expect(subject.errors[:status]).to_not be_empty
  end

  it 'is not valid without quantity' do
    subject.quantity = nil
    subject.valid?
    expect(subject.errors[:quantity]).to_not be_empty
  end

  it 'is not valid without a price' do
    subject.price = nil
    subject.valid?
    expect(subject.errors[:price]).to_not be_empty
  end

  it 'is not valid without an event' do
    subject.event = nil
    subject.valid?
    expect(subject.errors[:event]).to_not be_empty
  end


end
