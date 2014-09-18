module Refinery
  module Calendar
    class CategoriesController < ::ApplicationController
      before_filter :find_page, :except => :archive

      def show
        @category = Category.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @event in the line below:
        present(@page)
      end

      protected
      def find_page
        @page = ::Refinery::Page.where(:link_url => "/calendar/categories").first
      end

    end
  end
end
