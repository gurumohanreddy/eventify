class EventsController < ApplicationController
  def new
    @event = Event.pretty_new

  end

  def create
    @event = Event.new(event_params)
    # @event.title = params[:event][:title]
    # @event.description = params[:event][:description]
    @event.start_time = parse_time(:event,"start_time")
    @event.end_time = parse_time(:event,"end_time")
    # @event.start_time = DateTime.new(params[:event]["start_time(1i)"].to_i,
    # params[:event]["start_time(2i)"].to_i,params[:event]["start_time(3i)"].to_i,
    # params[:event]["start_time(4i)"].to_i,params[:event]["start_time(5i)"].to_i)
    # @event.end_time = DateTime.new(params[:event]["end_time(1i)"].to_i,
    # params[:event]["end_time(2i)"].to_i,params[:event]["end_time(3i)"].to_i,
    # params[:event]["end_time(4i)"].to_i,params[:event]["end_time(5i)"].to_i)
    @event.save
    redirect_to events_path
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @new_rsvp = Rsvp.new
    @rsvps = Rsvp.all
  end

private
  def event_params
      params.require(:event).permit(:title,:description)
  end


end
