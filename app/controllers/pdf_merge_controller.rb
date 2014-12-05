class PdfMergeController < ApplicationController

  def upload
    merger = MergePDF.new(params)
    file = merger.merge
    if file
      send_file file, filename: params[:title], type: "application/pdf"
    else
      flash[:notice] = "Files must be .pdf"
      redirect_to root_path
    end
  end
end
