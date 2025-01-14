module Refinery
  module Faq
    class FaqController < ::ApplicationController

      before_action :find_all_faqs
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @faq in the line below:
        present(@page)
      end

      def show
        @faq = Faq.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @faq in the line below:
        present(@page)
      end

      protected

      def find_all_faqs
        @faqs = Refinery::Faq::Faq.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/faq").first
      end

    end
  end
end
