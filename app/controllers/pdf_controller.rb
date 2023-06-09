class PdfController < ApplicationController
  def generate
     @id = params[:quotation]
    @quotation = Quotation.find(@id)
    @quotation_items = @quotation.quotation_items
    @name = @quotation.name
    @address= @quotation.address
    @city= @quotation.city
    @state= @quotation.state
    @pincode= @quotation.pincode
    @quotation_date= @quotation.quotation_date.to_formatted_s(:long)
    @total_area= @quotation.total_area
    @total_units= @quotation.total_units
    @is_bill= @quotation.is_bill
    @total_amt= @quotation.total_amt
    @advance = @quotation.advance
    @balance = @quotation.balance
    # puts "PDF Generate"
    # puts params

    filename = @name+ ".pdf"
    # puts "Quotation: "
    # puts params[:quotation]
    html = render_to_string(template: 'pdf/generate')
    pdf = WickedPdf.new.pdf_from_string(html)

    send_data pdf, filename: filename, type: 'application/pdf',
                  disposition: 'attachment'
    headers['Content-Type'] = 'application/pdf'
    headers['Content-Disposition'] = "attachment; filename=\"#{filename}\""
  end
end
