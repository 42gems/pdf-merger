class PdfMergeController < ApplicationController
require "prawn"

  def home
  end

  def upload
    @document = params[:file1]
    @document1 = params[:file2]

    pdf = PDF::Merger.new
    pdf.add_file @document.path
    pdf.add_file @document1.path
    pdf_final = Prawn::Document.new
    pdf_final.render_file "assignment.pdf"
    pdf.save_as "assignment.pdf"

    send_data pdf_final.render,
              filename:"assignment.pdf",
              type: "application/pdf"
  end
end