#!/PdfMege/lib/merge_pdf.rb
class PdfMergeController < ApplicationController

  def home
  end

  def upload
    document = params[:file1]
    document1 = params[:file2]
    path = Merge_pdf.merge(document, document1)
    send_file path,
              type: "application/pdf"
  end
end
