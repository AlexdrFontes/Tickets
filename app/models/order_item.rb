class OrderItem < ApplicationRecord
  belongs_to :ticket
  belongs_to :order
  validates_presence_of :ticket, :order, :quantity, :price
  validate :enougth_tickets

  def enougth_tickets
    if ticket && quantity && quantity > ticket.quantity
      errors.add(:quantity, "not enougth tickets")
      false
    else
      true
    end
  end
end
