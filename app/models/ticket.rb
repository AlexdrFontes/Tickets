class Ticket < ApplicationRecord
  belongs_to :event
  has_many :order_items
  validates_presence_of :name, :status, :quantity, :price
  enum status:  {active: "active", inactive: "inactive"}
end
