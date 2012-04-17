require 'event_calendar'
require 'event_calendar/calendar_helper'
require 'rails'

module EventCalendar
  class Railtie < Rails::Engine
    config.event_calendar = ActiveSupport::OrderedOptions.new

    initializer "event_calendar.configure" do |app|
      EventCalendar.configure do |config|
        config.color_theme = app.config.event_calendar[:color_theme] || "default"

        config.javascript = app.config.event_calendar[:javascript] || "jquery"

        config.cal_width = app.config.event_calendar[:cal_width] || "100%"
      end
    end

    initializer :after_initialize do
      if defined?(ActionController::Base)
        ActionController::Base.helper EventCalendar::CalendarHelper
      end
      if defined?(ActiveRecord::Base)
        ActiveRecord::Base.extend EventCalendar::ClassMethods
      end
    end
  end
end

# Support other ORMs
require 'event_calendar/orm/mongoid' if defined? Mongoid