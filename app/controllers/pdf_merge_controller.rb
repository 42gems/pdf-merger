class PdfMergeController < ApplicationController

  def home
  end

  def upload
    path = MergePDF.merge(params[:file1], params[:file2])
    send_file path,
              type: "application/pdf"
  end
end
