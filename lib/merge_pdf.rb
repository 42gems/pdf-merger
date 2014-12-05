class MergePDF

  def initialize(params)
    @data = params[:files]
  end

  def merge
    if valid?
      path = "merged_pdfs/assignment.pdf"
      pdf = PDF::Merger.new
      @data.values.each {|file_path| pdf.add_file file_path.path}
      pdf.save_as path
      path
    else
      false
    end
  end

  def valid?
    @data.values.all? {|file| file.content_type =~ /.pdf$/}
  end
end