class AddPhoneToQuotationAndNameToQuotationItem < ActiveRecord::Migration[7.0]
  def change
    add_column :quotation_items, :name, :string
    add_column :quotations, :phone, :string
  end
end
