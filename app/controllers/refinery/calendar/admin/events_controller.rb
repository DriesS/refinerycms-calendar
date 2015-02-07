module Refinery
  module Calendar
    module Admin
      class EventsController < ::Refinery::AdminController
        before_filter :find_venues, :except => [:index, :destroy]

        crudify :'refinery/calendar/event',
                :xhr_paging => true,
                :sortable => false,
                :order => "starts_at DESC"

        private
        def find_venues
          @venues = Venue.order('name')
        end

        def event_params
          params.require(:event).permit(:title, :from, :to, :registration_link, :excerpt, :description, :featured, :position, :venue_id, :image_id)
        end
      end
    end
  end
end
