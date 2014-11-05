module MergePDF

  def self.merge(data)
    path = "merged_pdfs/assignment.pdf"
    pdf = PDF::Merger.new
    data.each { |file_path| pdf.add_file file_path.path }
    pdf.save_as path
    path
  end
end