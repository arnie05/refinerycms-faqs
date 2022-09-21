# Open the Refinery::Page model for manipulation

Refinery::Page.class_eval do
  
  has_and_belongs_to_many :faqs, :class_name => '::Refinery::Faq::Faq', join_table: "refinery_pages_faqs"

end