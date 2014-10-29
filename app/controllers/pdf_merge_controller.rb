class PdfMergeController < ApplicationController

  def home
  end


  def merge
    require "pdf/merger"
    failure_list = []
    @document = params[:file]
    @document1 = params[:file1]
    pdf = PDF::Merger.new
    pdf.add_file @document
    pdf.add_file @document1
    pdf.add_javascript "this.print(true);"
    pdf.save_as "combined.pdf", failure_list
  end


end
