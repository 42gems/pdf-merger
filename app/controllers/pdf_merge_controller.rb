class PdfMergeController < ApplicationController

  def upload
    merger = MergePDF.new(params)
    # TODO avoid double method call here.
    if merger.merge
      # TODO fix
      send_file merger.merge, type:"application/pdf"
    else
      flash[:notice] = "Files must be .pdf"
      redirect_to root_path
    end
  end
end
