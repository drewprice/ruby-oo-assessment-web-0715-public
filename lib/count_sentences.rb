class String
  def count_sentences
    scan(/[\.\?!]+/).count
  end
end
