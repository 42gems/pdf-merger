module MergePDF
 require "securerandom"

  def self.merge(data)
    path = "merged_pdfs/assignment.pdf"
    pdf = PDF::Merger.new
    data.each { |file_path| pdf.add_file file_path.path }
    pdf.save_as path + SecureRandom.hex(4)
    path
    end
  end
