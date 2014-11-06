class PdfMergeController < ApplicationController

  def upload
     check(params[:files])
     send_file MergePDF.merge(params[:files]), type: "application/pdf"
  end

  def check(data)
  #  debugger
        flash[:notice] = "Post successfully created"
        redirect_to root_path
    end
end
