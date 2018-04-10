require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  subject { build(:order_item) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a ticket' do
    subject.ticket = nil
    subject.valid?
    expect(subject.errors[:ticket]).to_not be_empty
  end

  it 'is not valid without an order' do
    subject.order = nil
    subject.valid?
    expect(subject.errors[:order]).to_not be_empty
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

  context 'When there is not enougth ticket stock' do
    let(:ticket) { build(:ticket, quantity: 10) }
    subject { build(:order_item, ticket: ticket, quantity: 15) }

    it 'is not valid' do
      subject.valid?
      expect(subject.errors[:quantity]).to_not be_empty
    end
  end
end

