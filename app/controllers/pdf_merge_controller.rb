class PdfMergeController < ApplicationController

  def home
  end

  def upload
    document = params[:file1]
    document1 = params[:file2]

    pdf = PDF::Merger.new
    pdf.add_file document.path
    pdf.add_file document1.path
    # TODO no CAPS in the file names and folders, use underscores - it's convention
    pdf.save_as "app/DownloadPDF/assignment.pdf"

    send_file 'app/DownloadPDF/assignment.pdf',
              type: "application/pdf"
  end
end
