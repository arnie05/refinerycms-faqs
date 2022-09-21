Refinery::Admin::PagesController.prepend(
 Module.new do
   def permitted_page_params
     super <<  [:faq_ids => []]
    end
 end
)

Refinery::Admin::PagesController.class_eval do
  before_action :find_faqs

  protected

    def find_faqs
      @faqs = Refinery::Faq::Faq.all.order('position ASC')
    end
end

