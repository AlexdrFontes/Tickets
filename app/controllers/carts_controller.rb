class CartsController < ApplicationController
  def create
    session[:cart] ||= {}
    session[:cart][params[:ticket_id]] = params[:quantity]
    redirect_to root_path
    # redirect_back(fallback_location: root_path)
  end
end
