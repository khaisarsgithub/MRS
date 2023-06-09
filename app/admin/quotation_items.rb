ActiveAdmin.register QuotationItem do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  menu false
  permit_params :quotation_id, :item_id, :width, :height, :units, :quantity, :price
  #
  # or
  #
  # permit_params do
  #   permitted = [:quotation_id, :item_id, :quantity, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
