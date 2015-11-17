class RsvpsController < ApplicationController
  def create
    @rsvp = Rsvp.new
    @rsvp.email = params[:rsvp][:email]
    flash[:alert] = "Please enter your email" unless @rsvp.save


    redirect_to events_path
  end
end
