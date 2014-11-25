class MergePDF

  def initialize(params)
    @data = params
end

  def merge
    if check
      path = "merged_pdfs/assignment.pdf"
      pdf = PDF::Merger.new
      @data.values.each { |file_path| pdf.add_file file_path.path }
      pdf.save_as path
      path
    else
      false
    end
end

  def check
    @data.values.all? { |file| file.content_type =~ /.pdf$/ }
  end
end