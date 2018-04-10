class Ticket < ApplicationRecord
  belongs_to :event
  validates_presence_of :name, :status, :quantity, :price
  enum status:  {active: "active", inactive: "inactive"}
end
