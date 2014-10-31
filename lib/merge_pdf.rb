module MergePDF

  def self.merge(document1, document2)
    pdf = PDF::Merger.new
    path = "merged_pdfs/assignment.pdf"
    pdf.add_file document1.path
    pdf.add_file document2.path
    pdf.save_as path
    path
  end

end