class PdfMergeController < ApplicationController
  before_filter :check, only:[:upload]

  def upload
     send_file MergePDF.merge(params[:files]), type: "application/pdf"
  end

  private
  def check
    data = params[:files]
    #debugger
    data.each do |file|
      unless  file.content_type =~ /.pdf$/
        flash[:notice] = "Files must be .pdf"
        redirect_to :back
      end
    end
  end
end
