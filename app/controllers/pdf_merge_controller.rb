class PdfMergeController < ApplicationController

  def upload
     send_file MergePDF.merge(params[:file1], params[:file2]), type: "application/pdf"
  end
end
