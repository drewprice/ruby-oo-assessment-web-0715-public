class Array
  def odds?
    map(&:odd?)
  end
end
