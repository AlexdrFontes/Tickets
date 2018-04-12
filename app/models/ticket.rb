class Ticket < ApplicationRecord
  belongs_to :event
  has_many :order_items
  validates_presence_of :name, :status, :quantity, :price
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  enum status:  {active: "active", inactive: "inactive"}
end
