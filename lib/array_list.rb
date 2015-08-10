module Enumerable
  def make_list
    map.with_index(1) { |e, i| "#{i}. #{e}" }
  end
end
