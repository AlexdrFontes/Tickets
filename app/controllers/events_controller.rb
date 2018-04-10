class EventsController < ApplicationController
  def index
    @events = Event.where('start_at >= ?', Time.zone.now)
                   .order(start_at: :asc)
                   .limit(3)
  end

  def show
    @event = Event.find(params[:id])
  end
end
