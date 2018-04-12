class TicketConfirmationJob < ApplicationJob
  queue_as :default

  def perform(order)
    TicketMailler.ticket_confirmation(order).deliver_now
  end
end
