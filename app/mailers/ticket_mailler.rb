class TicketMailler < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.appointment_mailer.Appointment.subject
  #
    default from: 'noreply@ticket.com'
  def ticket_confirmation(order)
    @order = order
    mail to: @order.email, subject: "Your tickets arrived!"
  end
end
