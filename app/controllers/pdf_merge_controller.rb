class PdfMergeController < ApplicationController

  def home
  end

  def upload
    document = params[:file1]
    document1 = params[:file2]

    pdf = PDF::Merger.new
    pdf.add_file document.path
    pdf.add_file document1.path
    pdf.save_as "merged_pdfs/assignment.pdf"

    send_file 'merged_pdfs/assignment.pdf',
              type: "application/pdf"
  end
end
