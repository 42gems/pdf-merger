#!/PdfMege/lib/merge_pdf.rb
require_relative '../../lib/merge_pdf'

class PdfMergeController < ApplicationController
  include Merge_pdf

  def home
  end

  def upload
    document = params[:file1]
    document1 = params[:file2]
    path = Merge_pdf.merge(document, document1)
    send_file path.to_s,
              type: "application/pdf"
  end
end
