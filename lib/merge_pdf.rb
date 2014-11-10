class MergePDF

  def initialize(params)
    @data = params
  end

  def merge
    if check
      path = "merged_pdfs/assignment.pdf"
      pdf = PDF::Merger.new
      @data.each { |file_path| pdf.add_file file_path.path }
      pdf.save_as path
      path
    else
      false
    end
end

  def check
    @data.each do |file|
      if file.content_type =~ /.pdf$/
        true
      else
      return false
      end
    end
  end
end