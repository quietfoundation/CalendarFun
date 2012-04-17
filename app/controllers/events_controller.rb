class EventsController < ApplicationController
  before_filter :load, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])

    if @event.save
      redirect_to calendar_path, notice: 'Event created'
    else
      render action: 'new'
    end
  end

  def edit
  end

  def update
    if @event.update_attributes(params[:event])
      redirect_to calendar_path, notice: 'Event updated'
    else
      render action: 'edit'
    end
  end

  def destroy
    @event.destroy
    redirect_to calendar_path, notice: 'Event deleted'
  end

  protected

  def load
    @event = Event.find(params[:id])
  end
end
