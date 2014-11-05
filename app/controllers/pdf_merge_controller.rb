class PdfMergeController < ApplicationController

  def upload
     send_file MergePDF.merge(params[:files]), type: "application/pdf"
  end
end