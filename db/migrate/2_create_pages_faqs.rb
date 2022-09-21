class CreatePagesFaqs < ActiveRecord::Migration[4.2]
  def change
    create_table :refinery_pages_faqs, :id => false do |t|
      t.references :page, :null => false
      t.references :faq, :null => false
    end
    add_index(:refinery_pages_faqs, [:page_id, :faq_id])
  end
end