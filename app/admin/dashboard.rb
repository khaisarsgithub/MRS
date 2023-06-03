# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }


    content title: "OverView" do
    div div class: "blank_slate_container", id: "dashboard_default_message" do
      columns do
        column do
          panel "Total Quotations" do
            para Quotation.where(is_bill: false).count
          end
        end
        column do
          panel "Total Bills" do
            para Quotation.where(is_bill: true).count
          end
        end
        column do
          panel "Total Quotations Genereated" do
            para Quotation.count
          end
        end
      end
       columns do
        column do
          panel "Total Revenue (without GST)" do
            para Quotation.sum(:total_amt)
          end
        end
        column do
          panel "Total Revenue (including GST)" do
            para Quotation.sum(:grand_total)
          end
        end
        column do
          panel "Total GST (C-GST and S-GST)" do
            para Quotation.sum(:c_gst) * 2
          end
        end
      end
    end
  end
end
