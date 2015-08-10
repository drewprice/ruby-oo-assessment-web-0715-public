class Array
  def symbol_roundup
    select { |e| e.is_a? Symbol }
  end
end
