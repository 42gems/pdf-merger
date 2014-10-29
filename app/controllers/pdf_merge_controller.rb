class PdfMergeController < ApplicationController

  def home
  end


  def upload
    require "pdf/merger"
    failure_list = []
    @document = params[:pdf]
    @document1 = params[:pdf1]
    pdf = PDF::Merger.new
    pdf.add_file @document
    pdf.add_file @document1
    pdf.add_javascript "this.print(true);"
    pdf.save_as "combined.pdf", failure_list
  end


end
