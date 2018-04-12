class CheckoutsController < ApplicationController
  def show
    @client_token = gateway.client_token.generate
    @order = build_order
    @payment_errors = []
  end

  def create
    nonce_from_the_client = params[:payment_method_nonce]

    @order = build_order

    @payment_errors = []

    Order.transaction do
      if @order.save

        @order.order_items.each do |order_item|
          order_item.ticket.lock!
          order_item.ticket.quantity -= order_item.quantity
        TicketConfirmationJob.perform_now(@order)
          if !order_item.ticket.save
            raise ActiveRecord::Rollback
          end
        end

        result = gateway.transaction.sale(
          amount: (total_amount / 100.0),
          payment_method_nonce: nonce_from_the_client,
          options: {
            submit_for_settlement: true
          }
        )

        if !result.success? && !result.transaction
          @payment_errors = result.errors.map { |error| "Error: #{error.code}: #{error.message}" }
          raise ActiveRecord::Rollback
        end
      end
    end

    if @order.persisted?
      # enviar email
      session[:cart] = {}
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def total_amount
  @order.order_items.sum { |order_item| order_item.quantity * order_item.price }/1000
  end

  def build_order
    order = Order.new(email: params[:email],
      postal_code: params[:postal_code],
      first_name: params[:first_name],
      last_name: params[:last_name],
      country: params[:country],
      address: params[:address],
      city: params[:city])
    session[:cart].each do |ticket_id, quantity|
      ticket = Ticket.find_by(id: ticket_id)
      order.order_items.build(ticket_id: ticket.id, price: ticket.price, quantity: quantity.to_i)
    end
    order
  end

  def gateway
    Braintree::Gateway.new(
      environment: :sandbox,
      merchant_id: "kbm2kth5fh96kk8g",
      public_key: "xbdyknywbcjwtrcy",
      private_key: "cafc899694bfe92fdf57086451f14e79")
  end
end
