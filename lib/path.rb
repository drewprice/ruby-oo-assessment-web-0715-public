class Path
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def normalize_path
    "#{"#{Dir.pwd}/" if relative_path?}#{path}"
  end

  def relative_path?
    !absolute_path?
  end

  def absolute_path?
    path.start_with?('/')
  end
end
