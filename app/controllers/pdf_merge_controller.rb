class PdfMergeController < ApplicationController

  def upload
     check(params[:files])
     send_file MergePDF.merge(params[:files]), type: "application/pdf"
  end
end
