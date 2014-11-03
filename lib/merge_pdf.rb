module MergePDF

  def self.merge(data)
    path = "merged_pdfs/assignment.pdf"
    data.map {|key,value|
      pdf = PDF::Merger.new
      pdf.add_file value.path
      pdf.save_as path
    }
    path
    end

  end
