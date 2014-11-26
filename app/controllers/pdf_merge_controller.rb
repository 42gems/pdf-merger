class PdfMergeController < ApplicationController

  def upload
    merger = MergePDF.new(params[:files])
    if merger.merge
      send_file merger.merge,type:"application/pdf"
    else
      flash[:notice] = "Files must be .pdf"
      redirect_to root_path
    end
  end
end